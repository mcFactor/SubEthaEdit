//
//  SyntaxHighlighter.m
//  SyntaxTestBench
//
//  Created by Martin Pittenauer on Thu Mar 04 2004.
//  Copyright (c) 2004 TheCodingMonkeys. All rights reserved.
//
//

#import "SyntaxHighlighter.h"
#import "PlainTextDocument.h"
#import "time.h"
#import <OgreKit/OgreKit.h>

#define chunkSize              		5000
#define makeDirty              		 100

NSString * const kSyntaxHighlightingIsCorrectAttributeName  = @"HighlightingIsCorrect";
NSString * const kSyntaxHighlightingIsCorrectAttributeValue = @"Correct";
NSString * const kSyntaxHighlightingStateName = @"HighlightingState";
NSString * const kSyntaxHighlightingStateDelimiterName = @"HighlightingStateDelimiter";
NSString * const kSyntaxHighlightingStyleIDAttributeName = @"StyleID";

@implementation SyntaxHighlighter
/*"A Syntax Highlighter"*/

#pragma mark - 
#pragma mark - Initizialisation (fizzle televizzle)
#pragma mark - 

/*"Initiates the Highlighter with a Syntax Definition"*/
- (id)initWithSyntaxDefinition:(SyntaxDefinition *)aSyntaxDefinition 
{
    self=[super init];
    if (self) {
        [self setSyntaxDefinition:aSyntaxDefinition];
        //NSLog(@"Using onigruma %@",[OGRegularExpression onigurumaVersion]);
    }
    DEBUGLOG(@"SyntaxHighlighterDomain", AllLogLevel, @"Initiated new SyntaxHighlighter:%@",[self description]);
    return self;
}

#pragma mark - 
#pragma mark - Highlighting
#pragma mark - 

/*"Highlights an NSAttributedString using the Chunky State Machine Algorithm:

    do {
        if (state) 
            searchEnd
            color
        else
            colorDefaultState
            searchAndMarkNextState
    } while (ready)

"*/
-(void)highlightAttributedString:(NSMutableAttributedString *)aString inRange:(NSRange)aRange 
{
    SyntaxDefinition *definition = [self syntaxDefinition];
    if (!definition) NSLog(@"ERROR: No defintion for highlighter.");
    NSString *theString = [aString string];
    //NSLog(NSStringFromRange(aRange));
    
    NSRange currentRange = aRange;
    int stateNumber;
    NSDictionary *foundState;
    NSDictionary *defaultState = [definition defaultState];
    NSNumber *stateName;
    
    OGRegularExpression *stateStarts = [definition combinedStateRegex];
    OGRegularExpression *stateEnd;
    OGRegularExpressionMatch *startMatch;
    OGRegularExpressionMatch *endMatch;

    [aString removeAttribute:kSyntaxHighlightingStateName range:aRange];
    [aString removeAttribute:kSyntaxHighlightingStateDelimiterName range:aRange];
    
    do {
        //DEBUGLOG(@"SyntaxHighlighterDomain", AllLogLevel, @"New loop with Range: %@",NSStringFromRange(currentRange));
        NSAutoreleasePool *syntaxPool = [NSAutoreleasePool new];

        // Are we already in a state?
        if ((currentRange.location>0) && 
            (stateName = [aString attribute:kSyntaxHighlightingStateName atIndex:currentRange.location-1 effectiveRange:nil]) && 
            (!([[aString attribute:kSyntaxHighlightingStateDelimiterName atIndex:currentRange.location-1 effectiveRange:nil] isEqualTo:@"End"]))) {
            stateNumber = [stateName intValue];
                        
            if ((foundState = [[definition states] objectAtIndex:stateNumber])) {
            // Search for the end
                    if ((stateEnd = [foundState objectForKey:@"EndsWithRegex"])) {    
                        NSRange endRange;
                        NSRange stateRange;
                        NSRange startRange;

                        // Add start to colorRange
                        NSRange attRange;
                        if([[aString attribute:kSyntaxHighlightingStateDelimiterName atIndex:currentRange.location-1 longestEffectiveRange:&attRange inRange:aRange] isEqualToString:@"Start"]){
                            startRange = attRange;
                        } else {
                            startRange = NSMakeRange(NSNotFound,0);
                        }

                        if ((endMatch = [stateEnd matchInString:theString range:currentRange])) { // Search for end of state
                            endRange = [endMatch rangeOfMatchedString];
                            [aString addAttribute:kSyntaxHighlightingStateDelimiterName value:@"End" range:endRange];
                            stateRange = NSMakeRange(currentRange.location, NSMaxRange(endRange) - currentRange.location);
                            //DEBUGLOG(@"SyntaxHighlighterDomain", AllLogLevel, @"Found State End: %@ at %d",[foundState objectForKey:@"id"], endRange.location);
                        } else {  // No end found in chunk, so mark the whole chunk
                            //DEBUGLOG(@"SyntaxHighlighterDomain", AllLogLevel, @"State %@ does not end in chunk",[foundState objectForKey:@"id"]);
                            stateRange = NSMakeRange(currentRange.location, NSMaxRange(aRange) - currentRange.location);
                        }
                        
                        NSMutableDictionary *attributes = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                                    [theDocument fontWithTrait:[[foundState objectForKey:@"font-trait"] unsignedIntValue]], NSFontAttributeName,
                                                    [NSNumber numberWithInt:stateNumber],kSyntaxHighlightingStateName,
                                                    nil];
                        
                        NSColor *stateColor;
                        if ((stateColor = [foundState objectForKey:@"color"])) {
                            if (I_theDocumentBackgroundIsDark) {
                                NSColor *stateInvertedColor;
                                if ((stateInvertedColor = [foundState objectForKey:@"inverted-color"])) {
                                    stateColor = stateInvertedColor;
                                } else {
                                    stateColor = [stateColor brightnessInvertedColor];
                                }
                            }
                            [attributes setObject:stateColor forKey:NSForegroundColorAttributeName];
                        }
                                                    
                        NSRange colorRange;
                        if (startRange.location!=NSNotFound) {
                            colorRange = NSUnionRange(startRange,stateRange);
                        } else {
                            colorRange = stateRange;
                        }
                        [aString addAttributes:attributes range:colorRange];
                        [self highlightRegularExpressionsOfAttributedString:aString inRange:colorRange forState:stateNumber];
                        [self highlightPlainStringsOfAttributedString:aString inRange:colorRange forState:stateNumber];

                        currentRange.location = NSMaxRange(stateRange);
                        currentRange.length = currentRange.length - stateRange.length;
                    } else {
                        NSLog(@"ERROR: Missing EndsWithRegex tag.");
                        return;
                    }
                }  else {
                    DEBUGLOG(@"SyntaxHighlighterDomain", AllLogLevel, @"ERROR: Can't lookup state. This is very fishy.");
                    return;
                }
        } else { // Currently not in a state -> Search next.
            NSRange defaultStateRange = currentRange;
            if ((startMatch = [stateStarts matchInString:theString range:currentRange])) { // Found new state
                NSRange startRange = [startMatch rangeOfMatchedString];
                defaultStateRange.length = startRange.location - currentRange.location;
                stateNumber = [startMatch indexOfFirstMatchedSubstring] - 1;
                foundState = [[definition states] objectAtIndex:stateNumber];
                NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                            I_theDocumentBackgroundIsDark?[[foundState objectForKey:@"color"] brightnessInvertedColor]:[foundState objectForKey:@"color"], NSForegroundColorAttributeName,                                                    
                                            [theDocument fontWithTrait:[[foundState objectForKey:@"font-trait"] unsignedIntValue]], NSFontAttributeName,
                                            [NSNumber numberWithInt:stateNumber],kSyntaxHighlightingStateName,
                                            @"Start",kSyntaxHighlightingStateDelimiterName,
                                            nil];
                [aString addAttributes:attributes range:startRange];
                currentRange.length = currentRange.length - (NSMaxRange(startRange) - currentRange.location);
                currentRange.location = NSMaxRange(startRange);
            } else { //No state left in chunk 
                currentRange.location = NSMaxRange(currentRange);
                currentRange.length = 0;
            }
            // Color defaultState
            NSMutableDictionary *attributes = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                        [theDocument documentForegroundColor], NSForegroundColorAttributeName,
                                        [theDocument fontWithTrait:[[defaultState objectForKey:@"font-trait"] unsignedIntValue]], NSFontAttributeName, nil];
            
            NSColor *stateColor;
            if ((stateColor = [defaultState objectForKey:@"color"])) {
                if (I_theDocumentBackgroundIsDark) {
                    NSColor *stateInvertedColor;
                    if ((stateInvertedColor = [defaultState objectForKey:@"inverted-color"])) {
                        stateColor = stateInvertedColor;
                    } else {
                        stateColor = [stateColor brightnessInvertedColor];
                    }
                } 
                [attributes setObject:stateColor forKey:NSForegroundColorAttributeName];
            }
            
            [aString addAttributes:attributes range:defaultStateRange];
            [self highlightRegularExpressionsOfAttributedString:aString inRange:defaultStateRange forState:-1];
            [self highlightPlainStringsOfAttributedString:aString inRange:defaultStateRange forState:-1];
        }
        [syntaxPool release];
    } while (currentRange.length>0);
    [aString addAttribute:kSyntaxHighlightingIsCorrectAttributeName value:kSyntaxHighlightingIsCorrectAttributeValue range:aRange];
    
    int nextIndex = NSMaxRange(aRange);
    if ((nextIndex < [theString length])&&([aString attribute:kSyntaxHighlightingIsCorrectAttributeName atIndex:nextIndex effectiveRange:nil])) {
        BOOL isEnd = [[aString attribute:kSyntaxHighlightingStateDelimiterName atIndex:nextIndex-1 effectiveRange:nil] isEqualTo:@"End"];
        BOOL isStart = [[aString attribute:kSyntaxHighlightingStateDelimiterName atIndex:nextIndex effectiveRange:nil] isEqualTo:@"Start"];
        BOOL makeItDirty = NO;
        NSNumber *leftState  = [aString attribute:kSyntaxHighlightingStateName atIndex:nextIndex-1 effectiveRange:nil];
        NSNumber *rightState = [aString attribute:kSyntaxHighlightingStateName atIndex:nextIndex effectiveRange:nil];
        if (leftState) {
            if (rightState) { // Two states clashing
                if (![leftState isEqualToNumber:rightState]) {
                    // different States, if not end/start make dirty 
                    if (!(isEnd&&isStart)) makeItDirty = YES; 
                } else { 
                    // Same states -> do nothing
                }
            } else {
                // someState.defaultState -> check for end
                if (!isEnd) makeItDirty = YES;
            }
        } else {
            if (rightState) {
                //defaultState.someState -> Check for start
                if (!isStart) makeItDirty = YES;
            } else {
                // both defaultState -> do nothing
            }
        }
        if (makeItDirty) {
           [aString removeAttribute:kSyntaxHighlightingIsCorrectAttributeName range:NSMakeRange(nextIndex,MIN(makeDirty,[theString length]-nextIndex))]; 
        }
    }
}

-(void)highlightPlainStringsOfAttributedString:(NSMutableAttributedString*)aString inRange:(NSRange)aRange forState:(int)aState
{
    aState++; // Default state has index 0 in lookup table, so call with -1 to get it
    int aMaxRange = NSMaxRange(aRange);
    int location;
    NSDictionary *style;
    SyntaxDefinition *definition = [self syntaxDefinition];

    NSMutableDictionary *attributes=[NSMutableDictionary new];

    NSScanner *scanner = [NSScanner scannerWithString:[aString string]];
    [scanner setCharactersToBeSkipped:[definition invertedTokenSet]];
    [scanner setScanLocation:aRange.location];
    do {
        NSString *token = nil;
        if ([scanner scanCharactersFromSet:[definition tokenSet] intoString:&token]) {
            location = [scanner scanLocation];
            if (token) {
                //DEBUGLOG(@"SyntaxHighlighterDomain", AllLogLevel, @"Found Token: %@ in State %d",token, aState);
                if ((style = [definition styleForToken:token inState:aState])) {
                    int tokenlength = [token length];
                    NSRange foundRange = NSMakeRange(location-tokenlength,tokenlength);
                    if (NSMaxRange(foundRange)>aMaxRange) break;

                    [attributes setObject:I_theDocumentBackgroundIsDark?[[style objectForKey:@"color"] brightnessInvertedColor]:[style objectForKey:@"color"]
                                   forKey:NSForegroundColorAttributeName];
                    [attributes setObject:[theDocument fontWithTrait:[[style objectForKey:@"font-trait"] unsignedIntValue]]
                                   forKey:NSFontAttributeName];
                                                
                    [aString addAttributes:attributes range:foundRange];
                }
            }
        } else break;
    } while (location < aMaxRange);
    
    [attributes release];
}

-(void)highlightRegularExpressionsOfAttributedString:(NSMutableAttributedString*)aString inRange:(NSRange)aRange forState:(int)aState
{
    aState++; // Default state has index 0 in lookup table, so call with -1 to get it
    NSArray *regexArray = [[self syntaxDefinition] regularExpressionsInState:aState];
    OGRegularExpression *aRegex;
    OGRegularExpressionMatch *aMatch;
    NSDictionary *style;
    NSString *theString = [aString string];
    int i;
    int count = [regexArray count];

    NSMutableDictionary *attributes=[NSMutableDictionary new];
    
    for (i=0; i<count; i++) {
        NSArray *currentRegexStyle = [regexArray objectAtIndex:i];
        aRegex = [currentRegexStyle objectAtIndex:0];
        style = [currentRegexStyle objectAtIndex:1];

        [attributes setObject:I_theDocumentBackgroundIsDark?[[style objectForKey:@"color"] brightnessInvertedColor]:[style objectForKey:@"color"]
                       forKey:NSForegroundColorAttributeName];
        [attributes setObject:[theDocument fontWithTrait:[[style objectForKey:@"font-trait"] unsignedIntValue]]
                       forKey:NSFontAttributeName];
        
        NSEnumerator *matchEnumerator = [[aRegex allMatchesInString:theString range:aRange] objectEnumerator];
        while ((aMatch = [matchEnumerator nextObject])) {
            [aString addAttributes:attributes range:[aMatch rangeOfSubstringAtIndex:1]]; // Only color first group.
        }
    }
    [attributes release];
}

#pragma mark - 
#pragma mark - Accessors
#pragma mark - 

- (NSString *)description {
    return [NSString stringWithFormat:@"SyntaxHighlighter for %@", [I_syntaxDefinition name]];
}

- (SyntaxDefinition *)syntaxDefinition
{
    return I_syntaxDefinition;
}

- (void)setSyntaxDefinition:(SyntaxDefinition *)aSyntaxDefinition
{
    [I_syntaxDefinition autorelease];
     I_syntaxDefinition = [aSyntaxDefinition retain];
}

- (SyntaxStyle *)defaultSyntaxStyle {
    return [I_syntaxDefinition defaultSyntaxStyle];
}

#pragma mark - 
#pragma mark - Document Interaction
#pragma mark - 

/*"Colorizes at least one chunk of the TextStorage, returns NO if there is still work to do"*/
- (BOOL)colorizeDirtyRanges:(NSTextStorage *)aTextStorage ofDocument:(id)sender
{
    NSRange textRange=NSMakeRange(0,[aTextStorage length]);
    double return_after = 0.2;
    BOOL returnvalue = NO;
    BOOL returncontrol = NO;
    clock_t start_time = clock();
    int chunks=0;
    NSRange dirtyRange;
    NSRange chunkRange;
    id correct;
    
    theDocument = sender;
    I_theDocumentBackgroundIsDark = [[theDocument documentBackgroundColor] isDark];
    [aTextStorage beginEditing];
    
    unsigned int position;
    position=0;
    while (position<NSMaxRange(textRange)) {
        correct=[aTextStorage attribute:kSyntaxHighlightingIsCorrectAttributeName atIndex:position longestEffectiveRange:&dirtyRange inRange:textRange];
        if (!correct) {
            while (YES) {
                chunks++;
                chunkRange = dirtyRange;
                if (chunkRange.length > chunkSize) chunkRange.length = chunkSize;
                chunkRange = [[aTextStorage string] lineRangeForRange:chunkRange];

                //DEBUGLOG(@"SyntaxHighlighterDomain", AllLogLevel, @"Chunk #%d, Dirty: %@, Chunk: %@", chunks, NSStringFromRange(dirtyRange),NSStringFromRange(chunkRange));


                [self highlightAttributedString:aTextStorage inRange:chunkRange];
                
                
                if ((((double)(clock()-start_time))/CLOCKS_PER_SEC) > return_after) {
                    DEBUGLOG(@"SyntaxHighlighterDomain", AllLogLevel, @"Coloring took too long, aborting after %f seconds",(((double)(clock()-start_time))/CLOCKS_PER_SEC));
                    returncontrol = YES;
                    break;
                }
                
                unsigned int lastDirty=NSMaxRange(dirtyRange);
                if (NSMaxRange(chunkRange) < lastDirty) {
                    dirtyRange.location = NSMaxRange(chunkRange);
                    dirtyRange.length = lastDirty-dirtyRange.location;
                } else {
                    DEBUGLOG(@"SyntaxHighlighterDomain", AllLogLevel, @"Finished coloring of dirtyRange after %f seconds",(((double)(clock()-start_time))/CLOCKS_PER_SEC));
                    break;
                }
            }
            position=NSMaxRange(chunkRange);
        } else {
            position=NSMaxRange(dirtyRange);
            if (position>=[aTextStorage length]) {
                returnvalue = YES;
                break;
            }
        }

        if (returncontrol) {
            DEBUGLOG(@"SyntaxHighlighterDomain", AllLogLevel, @"Returning control");
            break;
        }

        // adjust Range
        textRange.length=NSMaxRange(textRange);
        textRange.location=position;
        textRange.length  =textRange.length-position;
    }
    
    [aTextStorage endEditing];
    
    return returnvalue;
}

/*"Cleans up any attribute it introduced to the textstorage while colorizing it"*/
- (void)cleanUpTextStorage:(NSTextStorage *)aTextStorage 
{
    [self cleanUpTextStorage:aTextStorage inRange:NSMakeRange(0,[aTextStorage length])];
}

- (void)cleanUpTextStorage:(NSTextStorage *)aTextStorage inRange:(NSRange)aRange
{
    [aTextStorage beginEditing];
    [aTextStorage removeAttribute:kSyntaxHighlightingIsCorrectAttributeName range:aRange];
    [aTextStorage removeAttribute:kSyntaxHighlightingStateName range:aRange];
    [aTextStorage removeAttribute:kSyntaxHighlightingStateDelimiterName range:aRange];
    [aTextStorage endEditing];
}


@end
