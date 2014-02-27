//
//  SEENetworkBrowser.m
//  SubEthaEdit
//
//  Created by Michael Ehrmann on 18.02.14.
//  Copyright (c) 2014 TheCodingMonkeys. All rights reserved.
//

#if !__has_feature(objc_arc)
#error ARC must be enabled!
#endif

#import "SEENetworkBrowser.h"
#import "SEENetworkBrowserGroupTableRowView.h"

#import "SEENetworkConnectionRepresentation.h"
#import "SEENetworkDocumentRepresentation.h"
#import "SEEBrowserNewDocumentItem.h"
#import "SEEBrowserOpenOtherItem.h"
#import "SEEBrowserConnectItem.h"

#import "DocumentController.h"
#import "DocumentModeManager.h"

#import "TCMMMPresenceManager.h"
#import "TCMMMSession.h"
#import "TCMMMUserManager.h"
#import "TCMMMUser.h"
#import "TCMMMUserSEEAdditions.h"

#import "SEEConnectionManager.h"
#import "SEEConnection.h"

#import <QuartzCore/QuartzCore.h>

extern int const FileMenuTag;
extern int const FileNewMenuItemTag;

static void *SEENetworkDocumentBrowserEntriesObservingContext = (void *)&SEENetworkDocumentBrowserEntriesObservingContext;

@interface SEENetworkBrowser () <NSTableViewDelegate>

@property (nonatomic, weak) IBOutlet NSScrollView *scrollViewOutlet;
@property (nonatomic, weak) IBOutlet NSTableView *tableViewOutlet;

@property (nonatomic, weak) IBOutlet NSObjectController *filesOwnerProxy;
@property (nonatomic, weak) IBOutlet NSArrayController *collectionViewArrayController;

@property (nonatomic, weak) id otherWindowsBecomeKeyNotifivationObserver;

@end

@implementation SEENetworkBrowser

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
		self.availableItems = [NSMutableArray array];
		[self reloadAllDocumentSessions];
		[self installKVO];

		__weak __typeof__(self) weakSelf = self;
		self.otherWindowsBecomeKeyNotifivationObserver =
		[[NSNotificationCenter defaultCenter] addObserverForName:NSWindowDidBecomeKeyNotification object:nil queue:nil usingBlock:^(NSNotification *note) {
			__typeof__(self) strongSelf = weakSelf;
			if (note.object != strongSelf.window && strongSelf.shouldCloseWhenOpeningDocument) {
				if ([NSApp modalWindow] == strongSelf.window) {
					[NSApp stopModalWithCode:NSModalResponseAbort];
				}
				[self close];
			}
		}];
    }
    return self;
}


- (void)dealloc
{
	[self removeKVO];

    [[NSNotificationCenter defaultCenter] removeObserver:self.otherWindowsBecomeKeyNotifivationObserver];

	[self close];
}


#pragma mark -

- (void)windowDidLoad
{
    [super windowDidLoad];

	NSScrollView *scrollView = self.scrollViewOutlet;
	scrollView.contentView.layer = [CAScrollLayer layer];
	scrollView.contentView.wantsLayer = YES;
	scrollView.contentView.layerContentsRedrawPolicy = NSViewLayerContentsRedrawNever;
	scrollView.wantsLayer = YES;

	NSTableView *tableView = self.tableViewOutlet;
	[tableView setTarget:self];
	[tableView setDoubleAction:@selector(triggerItemAction:)];

	self.filesOwnerProxy.content = self;
}


- (void)windowWillClose:(NSNotification *)notification
{
	if ([NSApp modalWindow] == notification.object) {
		[NSApp stopModalWithCode:NSModalResponseAbort];
	}

	self.filesOwnerProxy.content = nil;
}


- (NSInteger)runModal
{
	NSInteger result = [NSApp runModalForWindow:self.window];
	return result;
}


#pragma mark - KVO

- (void)installKVO {
	[[SEEConnectionManager sharedInstance] addObserver:self forKeyPath:@"entries" options:0 context:SEENetworkDocumentBrowserEntriesObservingContext];
}

- (void)removeKVO {
	[[SEEConnectionManager sharedInstance] removeObserver:self forKeyPath:@"entries" context:SEENetworkDocumentBrowserEntriesObservingContext];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == SEENetworkDocumentBrowserEntriesObservingContext) {
		[self reloadAllDocumentSessions];
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark - Content management

- (void)reloadAllDocumentSessions
{
	[self willChangeValueForKey:@"availableItems"];
	{
		[self.availableItems removeAllObjects];

		SEENetworkConnectionRepresentation *me = [[SEENetworkConnectionRepresentation alloc] init];
		me.user = [[TCMMMUserManager sharedInstance] me];
		[self.availableItems addObject:me];

		SEEBrowserNewDocumentItem *newDocumentRepresentation = [[SEEBrowserNewDocumentItem alloc] init];
		[self.availableItems addObject:newDocumentRepresentation];

		SEEBrowserOpenOtherItem *openOtherItem = [[SEEBrowserOpenOtherItem alloc] init];
		[self.availableItems addObject:openOtherItem];

		NSArray *allConnections = [[SEEConnectionManager sharedInstance] entries];
		for (SEEConnection *connection in allConnections) {

			SEENetworkConnectionRepresentation *connectionRepresentation = [[SEENetworkConnectionRepresentation alloc] init];
			connectionRepresentation.connection = connection;
			[self.availableItems addObject:connectionRepresentation];

			NSArray *sessions = connection.announcedSessions;
			for (TCMMMSession *session in sessions) {
				SEENetworkDocumentRepresentation *documentRepresentation = [[SEENetworkDocumentRepresentation alloc] init];
				documentRepresentation.documentSession = session;
				[self.availableItems addObject:documentRepresentation];
			}
		}

		[self.availableItems addObject:[[SEEBrowserConnectItem alloc] init]];
	}
	[self didChangeValueForKey:@"availableItems"];
}


#pragma mark - Actions

- (IBAction)newDocument:(id)sender
{
	if (self.shouldCloseWhenOpeningDocument) {
		if ([NSApp modalWindow] == self.window) {
			[NSApp stopModalWithCode:NSModalResponseCancel];
		}
		[self close];
	}

	NSMenu *menu=[[[NSApp mainMenu] itemWithTag:FileMenuTag] submenu];
    NSMenuItem *menuItem=[menu itemWithTag:FileNewMenuItemTag];
    menu = [menuItem submenu];
    NSMenuItem *item = (NSMenuItem *)[menu itemWithTag:[[DocumentModeManager sharedInstance] tagForDocumentModeIdentifier:[[[DocumentModeManager sharedInstance] modeForNewDocuments] documentModeIdentifier]]];

	[[NSDocumentController sharedDocumentController] newDocumentWithModeMenuItem:item];
}


- (IBAction)triggerItemAction:(id)sender
{
	NSTableView *tableView = self.tableViewOutlet;
	id <SEENetworkBrowserItem> clickedItem = nil;
	if (sender == tableView) {
		NSInteger row = tableView.clickedRow;
		NSInteger column = tableView.clickedColumn;
		NSTableCellView *tableCell = [tableView viewAtColumn:column row:row makeIfNecessary:NO];
		clickedItem = tableCell.objectValue;
	}

	// make sure we get the selection before closing the window... because it will reset the selection.
	NSArray *selectedDocuments = self.collectionViewArrayController.selectedObjects;
	if ([selectedDocuments containsObject:clickedItem]) {
//		if (self.shouldCloseWhenOpeningDocument) {
//			if ([NSApp modalWindow] == self.window) {
//				[NSApp stopModalWithCode:NSModalResponseOK];
//			}
//			[self close];
//		}

		[selectedDocuments makeObjectsPerformSelector:@selector(itemAction:) withObject:sender];
	} else {
		[clickedItem itemAction:sender];
	}
}


#pragma mark - NSTableViewDelegate

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
	NSView *result = nil;

	NSArray *rowItems = self.availableItems;
	id rowItem = [rowItems objectAtIndex:row];

	if (tableColumn == nil && [rowItem isKindOfClass:SEENetworkConnectionRepresentation.class]) {
		result = [tableView makeViewWithIdentifier:@"Group" owner:self];
	} else if (tableColumn == nil && [rowItem isKindOfClass:SEEBrowserConnectItem.class]) {
		result = [tableView makeViewWithIdentifier:@"Connect" owner:self];
	} else if ([rowItem isKindOfClass:SEEBrowserOpenOtherItem.class] || [rowItem isKindOfClass:SEEBrowserNewDocumentItem.class]) {
		result = [tableView makeViewWithIdentifier:@"OtherItems" owner:self];
	} else {
		result = [tableView makeViewWithIdentifier:@"Document" owner:self];
	}
	return result;
}

//- (NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row
//{
//	NSTableRowView * rowView = nil;
//	NSArray *availableDocumentSession = self.availableDocumentSessions;
//	SEENetworkDocumentRepresentation *documentRepresentation = [availableDocumentSession objectAtIndex:row];
//	if (documentRepresentation && !documentRepresentation.documentSession) {
//		rowView = [[SEENetworkBrowserGroupTableRowView alloc] init];
//	}
//	return rowView;
//}

- (void)tableView:(NSTableView *)tableView didAddRowView:(NSTableRowView *)rowView forRow:(NSInteger)row {
	NSArray *availableDocumentSession = self.availableItems;
	id documentRepresentation = [availableDocumentSession objectAtIndex:row];
	if ([documentRepresentation isKindOfClass:SEENetworkConnectionRepresentation.class]) {
		SEENetworkConnectionRepresentation *connectionRepresentation = (SEENetworkConnectionRepresentation *)documentRepresentation;
		NSTableCellView *tableCellView = [rowView.subviews objectAtIndex:0];

//		CIFilter *gaussianBlur = [CIFilter filterWithName:@"CIGaussianBlur"];
//		[gaussianBlur setDefaults];
//		tableCellView.layerUsesCoreImageFilters = YES;
//		[tableCellView setBackgroundFilters:@[gaussianBlur]];

		NSImageView *userImageView = [[tableCellView subviews] objectAtIndex:1];

		userImageView.wantsLayer = YES;
		CALayer *userViewLayer = userImageView.layer;
		NSColor *changeColor = connectionRepresentation.connection.user.changeColor;
		userViewLayer.borderColor = [[NSColor colorWithCalibratedHue:changeColor.hueComponent saturation:0.85 brightness:1.0 alpha:1.0] CGColor];
		userViewLayer.borderWidth = NSHeight(userImageView.frame) / 16.0;
		userViewLayer.cornerRadius = NSHeight(userImageView.frame) / 2.0;
	}
}

- (BOOL)tableView:(NSTableView *)tableView isGroupRow:(NSInteger)row
{
	BOOL result = NO;
	NSArray *availableDocumentSession = self.availableItems;
	id documentRepresentation = [availableDocumentSession objectAtIndex:row];
	if ([documentRepresentation isKindOfClass:SEENetworkConnectionRepresentation.class] ||
		[documentRepresentation isKindOfClass:SEEBrowserConnectItem.class]) {
		result = YES;
	}
	return result;
}

- (BOOL)tableView:(NSTableView *)tableView shouldSelectRow:(NSInteger)row
{
	BOOL result = NO;
	NSArray *availableDocumentSession = self.availableItems;
	id documentRepresentation = [availableDocumentSession objectAtIndex:row];
	if ([documentRepresentation isKindOfClass:SEENetworkDocumentRepresentation.class]) {
		result = YES;
	}
	return result;
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row {
	CGFloat rowHeight = 28.0;

	NSArray *availableDocumentSession = self.availableItems;
	id documentRepresentation = [availableDocumentSession objectAtIndex:row];
	if ([documentRepresentation isKindOfClass:SEENetworkConnectionRepresentation.class]) {
		rowHeight = 46.0;
	}
	return rowHeight;
}

@end