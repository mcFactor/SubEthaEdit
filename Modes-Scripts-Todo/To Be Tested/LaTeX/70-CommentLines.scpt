FasdUAS 1.101.10   ��   ��    k             l     ��  ��    G A$Id: CommentLines.applescript,v 1.8 2008/02/17 11:21:53 mjb Exp $     � 	 	 � $ I d :   C o m m e n t L i n e s . a p p l e s c r i p t , v   1 . 8   2 0 0 8 / 0 2 / 1 7   1 1 : 2 1 : 5 3   m j b   E x p   $   
  
 l     ��������  ��  ��        l      ��  ��   -'
Copyright (c) 2008, Michael J. Barber

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject
to the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR
ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
     �  N 
 C o p y r i g h t   ( c )   2 0 0 8 ,   M i c h a e l   J .   B a r b e r 
 
 P e r m i s s i o n   i s   h e r e b y   g r a n t e d ,   f r e e   o f   c h a r g e ,   t o   a n y   p e r s o n   o b t a i n i n g 
 a   c o p y   o f   t h i s   s o f t w a r e   a n d   a s s o c i a t e d   d o c u m e n t a t i o n   f i l e s   ( t h e 
 " S o f t w a r e " ) ,   t o   d e a l   i n   t h e   S o f t w a r e   w i t h o u t   r e s t r i c t i o n ,   i n c l u d i n g 
 w i t h o u t   l i m i t a t i o n   t h e   r i g h t s   t o   u s e ,   c o p y ,   m o d i f y ,   m e r g e ,   p u b l i s h , 
 d i s t r i b u t e ,   s u b l i c e n s e ,   a n d / o r   s e l l   c o p i e s   o f   t h e   S o f t w a r e ,   a n d   t o 
 p e r m i t   p e r s o n s   t o   w h o m   t h e   S o f t w a r e   i s   f u r n i s h e d   t o   d o   s o ,   s u b j e c t 
 t o   t h e   f o l l o w i n g   c o n d i t i o n s : 
 
 T h e   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   s h a l l   b e 
 i n c l u d e d   i n   a l l   c o p i e s   o r   s u b s t a n t i a l   p o r t i o n s   o f   t h e   S o f t w a r e . 
 
 T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S " ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D , 
 E X P R E S S   O R   I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   O F 
 M E R C H A N T A B I L I T Y ,   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N I N F R I N G E M E N T . 
 I N   N O   E V E N T   S H A L L   T H E   A U T H O R S   O R   C O P Y R I G H T   H O L D E R S   B E   L I A B L E   F O R 
 A N Y   C L A I M ,   D A M A G E S   O R   O T H E R   L I A B I L I T Y ,   W H E T H E R   I N   A N   A C T I O N   O F 
 C O N T R A C T ,   T O R T   O R   O T H E R W I S E ,   A R I S I N G   F R O M ,   O U T   O F   O R   I N   C O N N E C T I O N 
 W I T H   T H E   S O F T W A R E   O R   T H E   U S E   O R   O T H E R   D E A L I N G S   I N   T H E   S O F T W A R E . 
      l     ��������  ��  ��        l     ����  r         I     �������� "0 modeenvironment modeEnvironment��  ��    o      ���� 0 env  ��  ��        l    ����  r        I   ���� �� $0 doublequotedform doubleQuotedForm��    �� ��
�� 
for   m   
    �     N $ S E E _ M O D E _ R E S O U R C E S / b i n / c o m m e n t l i n e s . s h��    o      ���� 0 pipeline  ��  ��     ! " ! l     ��������  ��  ��   "  # $ # l    %���� % I    �������� .0 completeselectedlines completeSelectedLines��  ��  ��  ��   $  & ' & l   ) (���� ( r    ) ) * ) I   '�� + ,��  0 shelltransform shellTransform + l    -���� - I    �������� 0 selectiontext selectionText��  ��  ��  ��   , �� . /
�� 
for  . o    ���� 0 env   / �� 0 1
�� 
thru 0 o     !���� 0 pipeline   1 �� 2���� *0 alteringlineendings alteringLineEndings 2 m   " #��
�� boovfals��   * o      ���� 0 outtext outText��  ��   '  3 4 3 l  * 1 5���� 5 I  * 1���� 6�� $0 setselectiontext setSelectionText��   6 �� 7��
�� 
to   7 o   , -���� 0 outtext outText��  ��  ��   4  8 9 8 l     ��������  ��  ��   9  : ; : l     �� < =��   <   SubEthaEdit settings    = � > > *   S u b E t h a E d i t   s e t t i n g s ;  ? @ ? l     ��������  ��  ��   @  A B A i      C D C I      �������� 0 seescriptsettings  ��  ��   D K      E E �� F G�� 0 displayname displayName F m     H H � I I 2 U n / C o m m e n t   S e l e c t e d   L i n e s G �� J K�� $0 keyboardshortcut keyboardShortcut J m     L L � M M  @ / K �� N���� 0 incontextmenu inContextMenu N m     O O � P P  y e s��   B  Q R Q l     ��������  ��  ��   R  S T S l     �� U V��   U   SubEthaEdit Tools    V � W W $   S u b E t h a E d i t   T o o l s T  X Y X l     �� Z [��   Z M G $Id: SubEthaEditTools.m4pplescript,v 1.6 2008/02/17 12:29:00 mjb Exp $    [ � \ \ �   $ I d :   S u b E t h a E d i t T o o l s . m 4 p p l e s c r i p t , v   1 . 6   2 0 0 8 / 0 2 / 1 7   1 2 : 2 9 : 0 0   m j b   E x p   $ Y  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a   Environment management    b � c c .   E n v i r o n m e n t   m a n a g e m e n t `  d e d l     ��������  ��  ��   e  f g f i     h i h I      �������� "0 modeenvironment modeEnvironment��  ��   i I    !�� j k�� 0 join   j J      l l  m n m m      o o � p p r e x p o r t   _ _ C F _ U S E R _ T E X T _ E N C O D I N G = 0 x 1 F 5 : 0 x 8 0 0 0 1 0 0 : 0 x 8 0 0 0 1 0 0 ; n  q r q m     s s � t t 4 e x p o r t   S E E _ M O D E _ R E S O U R C E S = r  u v u I   ���� w�� $0 doublequotedform doubleQuotedForm��   w �� x��
�� 
for  x I    	�������� 0 moderesources modeResources��  ��  ��   v  y z y m     { { � | |  ;   z  }�� } I   ���� ~�� "0 readenvironment readEnvironment��   ~ �� ��
�� 
outo  I    �������� *0 environmentfilepath environmentFilePath��  ��  ��  ��   k �� ���
�� 
by   � m     � � � � �  ��   g  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 moderesources modeResources��  ��   � O     � � � e     � � l    ����� � n     � � � 1   
 ��
�� 
pMrp � l   
 ����� � n    
 � � � m    
��
�� 
Mode � l    ����� � 4   �� �
�� 
docu � m    ���� ��  ��  ��  ��  ��  ��   � m      � ��                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��   �  � � � l     ��������  ��  ��   �  � � � i    � � � I      �������� 20 openenvironmentsettings openEnvironmentSettings��  ��   � I    ���� ��� "0 openenvironment openEnvironment��   � �� � �
�� 
at   � I    �������� *0 environmentfilepath environmentFilePath��  ��   � � ��~� 60 settingdefaultenvironment settingDefaultEnvironment � m    	�}
�} boovtrue�~   �  � � � l     �|�{�z�|  �{  �z   �  � � � i     � � � I      �y�x�w�y *0 environmentfilepath environmentFilePath�x  �w   � k     $ � �  � � � O     � � � r     � � � n     � � � 1   
 �v
�v 
pnam � l   
 ��u�t � n    
 � � � m    
�s
�s 
Mode � l    ��r�q � 4   �p �
�p 
docu � m    �o�o �r  �q  �u  �t   � o      �n�n 0 modename modeName � m      � ��                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��   �  ��m � I   $�l � ��l 0 join   � J     � �  � � � I   �k � �
�k .earsffdralis        afdr � m    �j
�j afdrpref � �i � �
�i 
from � m    �h
�h fldmfldu � �g ��f
�g 
rtyp � m    �e
�e 
TEXT�f   �  � � � m     � � � � � : d e . c o d i n g m o n k e y s . S u b E t h a E d i t . �  � � � o    �d�d 0 modename modeName �  ��c � m     � � � � � $ _ e n v i r o n m e n t . p l i s t�c   � �b ��a
�b 
by   � m      � � � � �  �a  �m   �  � � � l     �`�_�^�`  �_  �^   �  � � � l     �] � ��]   � $  Manipulation of document text    � � � � <   M a n i p u l a t i o n   o f   d o c u m e n t   t e x t �  � � � l     �\�[�Z�\  �[  �Z   �  � � � i    � � � I      �Y�X�W�Y .0 completeselectedlines completeSelectedLines�X  �W   � I    	�V�U ��V "0 extendselection extendSelection�U   � �T � ��T  0 extendingfront extendingFront � m    �S
�S boovtrue � �R ��Q�R 0 extendingend extendingEnd�Q   �  � � � l     �P�O�N�P  �O  �N   �  � � � i     � � � I      �M�L�K�M 0 selectiontext selectionText�L  �K   � O     � � � e     � � l    ��J�I � n     � � � 1   
 �H
�H 
pTxt � l   
 ��G�F � 1    
�E
�E 
pSel�G  �F  �J  �I   � l     ��D�C � n      � � � 4   �B �
�B 
docu � m    �A�A  � m      � ��                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  �D  �C   �  � � � l     �@�?�>�@  �?  �>   �  � � � i    � � � I      �=�< ��= $0 setselectiontext setSelectionText�<   � �; ��:
�; 
to   � o      �9�9 0 newtext newText�:   � O     � � � r     � � � l    ��8�7 � o    �6�6 0 newtext newText�8  �7   � l      ��5�4 � n       � � � 1    �3
�3 
pTxt � l    ��2�1 � n     � � � 1   	 �0
�0 
pSel � l   	 �/�.  4   	�-
�- 
docu m    �,�, �/  �.  �2  �1  �5  �4   � m     �                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��   �  l     �+�*�)�+  �*  �)    i     # I      �(�'	�(  0 selectionrange selectionRange�'  	 �&
�&  0 extendingfront extendingFront
 o      �%�% &0 shouldextendfront shouldExtendFront �$�#�$ 0 extendingend extendingEnd o      �"�" "0 shouldextendend shouldExtendEnd�#   O     g Z    f F     o    �!�! &0 shouldextendfront shouldExtendFront o    � �  "0 shouldextendend shouldExtendEnd e    % J    %  n     1    �
� 
pIdS l   �� n     4   �
� 
cpar m    ��  l   �� 1    �
� 
pSel�  �  �  �    �  n    #!"! 1     "�
� 
pIdN" l    #��# n     $%$ 4    �&
� 
cpar& m    ����% l   '��' 1    �
� 
pSel�  �  �  �  �   ()( o   ( )�� &0 shouldextendfront shouldExtendFront) *+* e   , =,, J   , =-- ./. n   , 5010 1   2 4�
� 
pIdS1 l  , 22��2 n   , 2343 4  / 2�
5
�
 
cpar5 m   0 1�	�	 4 l  , /6��6 1   , /�
� 
pSel�  �  �  �  / 7�7 n   5 ;898 1   8 :�
� 
pIdN9 l  5 8:��: 1   5 8�
� 
pSel�  �  �  + ;<; o   @ A� �  "0 shouldextendend shouldExtendEnd< =��= e   D U>> J   D U?? @A@ n   D JBCB 1   G I��
�� 
pIdSC l  D GD����D 1   D G��
�� 
pSel��  ��  A E��E n   J SFGF 1   P R��
�� 
pIdNG l  J PH����H n   J PIJI 4  M P��K
�� 
cparK m   N O������J l  J ML����L 1   J M��
�� 
pSel��  ��  ��  ��  ��  ��   e   X fMM J   X fNN OPO n   X ^QRQ 1   [ ]��
�� 
pIdSR l  X [S����S 1   X [��
�� 
pSel��  ��  P T��T n   ^ dUVU 1   a c��
�� 
pIdNV l  ^ aW����W 1   ^ a��
�� 
pSel��  ��  ��   l    X����X n     YZY 4   ��[
�� 
docu[ m    ���� Z m     \\�                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  ��  ��   ]^] l     ��������  ��  ��  ^ _`_ i  $ 'aba I      ����c�� &0 setselectionrange setSelectionRange��  c ��d��
�� 
to  d o      ���� 0 newrange newRange��  b O     efe r    ghg o    ���� 0 newrange newRangeh 1    ��
�� 
pSelf l    i����i n     jkj 4   ��l
�� 
docul m    ���� k m     mm�                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  ��  ��  ` non l     ��������  ��  ��  o pqp i   ( +rsr I      ����t�� .0 extendedselectiontext extendedSelectionText��  t ��uv��  0 extendingfront extendingFrontu o      ���� &0 shouldextendfront shouldExtendFrontv ��w���� 0 extendingend extendingEndw o      ���� "0 shouldextendend shouldExtendEnd��  s k     7xx yzy r     {|{ I     ����}��  0 selectionrange selectionRange��  } ��~��  0 extendingfront extendingFront~ o    ���� &0 shouldextendfront shouldExtendFront ������� 0 extendingend extendingEnd� o   	 
���� "0 shouldextendend shouldExtendEnd��  | J    �� ��� o    ���� 0 	startchar 	startChar� ���� o    ���� 0 nextchar nextChar��  z ���� O    7��� e   % 6�� c   % 6��� l  % 4������ n   % 4��� 1   2 4��
�� 
pTxt� 7 % 2����
�� 
cha � o   * ,���� 0 	startchar 	startChar� l  - 1������ \   - 1��� o   . /���� 0 nextchar nextChar� m   / 0���� ��  ��  ��  ��  � m   4 5��
�� 
ctxt� l   "������ n    "��� 4   "���
�� 
docu� m     !���� � m    ���                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  ��  ��  ��  q ��� l     ��������  ��  ��  � ��� i  , /��� I      ������� "0 extendselection extendSelection��  � ������  0 extendingfront extendingFront� o      ���� &0 shouldextendfront shouldExtendFront� ������� 0 extendingend extendingEnd� o      ���� "0 shouldextendend shouldExtendEnd��  � k     *�� ��� r     ��� l     ������ I     �������  0 selectionrange selectionRange��  � ������  0 extendingfront extendingFront� o    ���� &0 shouldextendfront shouldExtendFront� ������� 0 extendingend extendingEnd� o   	 
���� "0 shouldextendend shouldExtendEnd��  ��  ��  � J    �� ��� o    ���� 0 	startchar 	startChar� ���� o    ���� 0 nextchar nextChar��  � ���� I   *������� &0 setselectionrange setSelectionRange��  � �����
�� 
to  � J     &�� ��� o     !���� 0 	startchar 	startChar� ���� \   ! $��� o   ! "���� 0 nextchar nextChar� m   " #���� ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � * $ Manipulation of document properties   � ��� H   M a n i p u l a t i o n   o f   d o c u m e n t   p r o p e r t i e s� ��� l     ��������  ��  ��  � ��� i  0 3��� I      ������� "0 checksavestatus checkSaveStatus��  � ������� 0 updating  � o      ���� 0 
shouldsave 
shouldSave��  � O     D��� k    C�� ��� Z    ������� H    �� l   ������ I   �����
�� .coredoexbool        obj � n    
��� 1    
��
�� 
ppth� 4   ���
�� 
docu� m    ���� ��  ��  ��  � R    ���~
� .ascrerr ****      � ****� m    �� ��� F Y o u   h a v e   t o   s a v e   t h e   d o c u m e n t   f i r s t�~  ��  ��  � ��}� Z    C���|�{� F    (��� o    �z�z 0 
shouldsave 
shouldSave� l   &��y�x� n    &��� 1   # %�w
�w 
imod� 4   #�v�
�v 
docu� m   ! "�u�u �y  �x  � Q   + ?���t� I  . 6�s��r
�s .coresavenull���     obj � 4  . 2�q�
�q 
docu� m   0 1�p�p �r  � R      �o�n�m
�o .ascrerr ****      � ****�n  �m  �t  �|  �{  �}  � m     ���                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  � ��� l     �l�k�j�l  �k  �j  � ��� i  4 7��� I      �i�h�g�i *0 requirenewlineateof requireNewlineAtEOF�h  �g  � O     "��� Z    !���f�� =   ��� m    �� ���  � l   ��e�d� n    ��� 1    �c
�c 
pTxt� l   ��b�a� 4   �`�
�` 
cpar� m   
 �_�_���b  �a  �e  �d  � l   �^���^  � ( " final line terminated, do nothing   � ��� D   f i n a l   l i n e   t e r m i n a t e d ,   d o   n o t h i n g�f  � r    !��� o    �]
�] 
ret � l     ��\�[� n         1     �Z
�Z 
pTxt l   �Y�X n     4   �W
�W 
cins m    �V�V�� l   �U�T 4   �S
�S 
cpar m    �R�R���U  �T  �Y  �X  �\  �[  � l    �Q�P n     	
	 4   �O
�O 
docu m    �N�N 
 m     �                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  �Q  �P  �  l     �M�L�K�M  �L  �K    i   8 ; I      �J�I�H�J 0 documentpath documentPath�I  �H   O     e     l   �G�F n     1    
�E
�E 
ppth l   �D�C 4   �B
�B 
docu m    �A�A �D  �C  �G  �F   m     �                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��    l     �@�?�>�@  �?  �>    i   < ? !  I      �=�<�;�= 0 documentline documentLine�<  �;  ! O    "#" e    $$ l   %�:�9% n    &'& 1   
 �8
�8 
pSln' n    
()( 1    
�7
�7 
pSel) 4   �6*
�6 
docu* m    �5�5 �:  �9  # m     ++�                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��   ,-, l     �4�3�2�4  �3  �2  - ./. l     �101�1  0   String Utilities   1 �22 "   S t r i n g   U t i l i t i e s/ 343 l     �056�0  5 G A $Id: StringTools.applescript,v 1.5 2008/02/17 08:56:05 mjb Exp $   6 �77 �   $ I d :   S t r i n g T o o l s . a p p l e s c r i p t , v   1 . 5   2 0 0 8 / 0 2 / 1 7   0 8 : 5 6 : 0 5   m j b   E x p   $4 898 l     �/�.�-�/  �.  �-  9 :;: i   @ C<=< I      �,>?�, 0 replacement  > o      �+�+ 0 olddelim oldDelim? �*@A
�* 
by  @ o      �)�) 0 newdelim newDelimA �(B�'
�( 
for B o      �&�& 0 sourcestring sourceString�'  = L     CC I    �%DE�% 0 join  D l    F�$�#F I    �"GH�" 
0 tokens  G o     �!�! 0 sourcestring sourceStringH � I�
�  
btwnI o    �� 0 olddelim oldDelim�  �$  �#  E �J�
� 
by  J o    	�� 0 newdelim newDelim�  ; KLK l     ����  �  �  L MNM i   D GOPO I      �QR� 
0 tokens  Q o      �� 0 str  R �S�
� 
btwnS o      �� 0 
delimiters  �  P k     TT UVU r     WXW n     YZY 1    �
� 
txdlZ 1     �
� 
ascrX o      �� 0 oldtids oldTIDsV [\[ r    ]^] o    �� 0 
delimiters  ^ n      _`_ 1    
�
� 
txdl` 1    �
� 
ascr\ aba r    cdc n    efe 2   �
� 
citmf o    �� 0 str  d o      �
�
 0 strtoks  b ghg r    iji o    �	�	 0 oldtids oldTIDsj n      klk 1    �
� 
txdll 1    �
� 
ascrh m�m L    nn o    �� 0 strtoks  �  N opo l     ����  �  �  p qrq i   H Ksts I      �uv� 0 join  u o      � �  0 	tokenlist 	tokenListv ��w��
�� 
by  w o      ���� 0 	delimiter  ��  t k     xx yzy r     {|{ n     }~} 1    ��
�� 
txdl~ 1     ��
�� 
ascr| o      ���� 0 oldtids oldTIDsz � r    ��� o    ���� 0 	delimiter  � n      ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� c    ��� o    ���� 0 	tokenlist 	tokenList� m    ��
�� 
TEXT� o      ���� 0 joinedstring joinedString� ��� r    ��� o    ���� 0 oldtids oldTIDs� n      ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L    �� o    ���� 0 joinedstring joinedString��  r ��� l     ��������  ��  ��  � ��� i   L O��� I      ������� $0 doublequotedform doubleQuotedForm��  � �����
�� 
for � o      ���� 0 
basestring 
baseString��  � b     ��� b     ��� 1     ��
�� 
quot� o    ���� 0 
basestring 
baseString� 1    ��
�� 
quot� ��� l     ��������  ��  ��  � ��� i   P S��� I      ������  0 shelltransform shellTransform� o      ���� 0 intext inText� ����
�� 
for � o      ���� 0 	envstring 	envString� ����
�� 
thru� o      ���� 0 pipeline  � ������� *0 alteringlineendings alteringLineEndings� o      ���� 0 altends altEnds��  � k     G�� ��� r     ��� I    ������ 0 join  � J     �� ��� o     ���� 0 	envstring 	envString� ��� m    �� ���  p b p a s t e� ��� m    �� ���  |� ���� o    ���� 0 pipeline  ��  � �����
�� 
by  � 1    ��
�� 
spac��  � o      ���� 0 shellscript  � ��� r    ��� I   ������
�� .JonsgClp****    ��� null��  ��  � l     ������ o      ���� 0 oldclipboard oldClipboard��  ��  � ��� I   �����
�� .JonspClpnull���     ****� l   ������ o    ���� 0 intext inText��  ��  ��  � ��� Q    ?���� r     )��� I    '����
�� .sysoexecTEXT���     TEXT� o     !���� 0 shellscript  � �����
�� 
alen� o   " #���� 0 altends altEnds��  � o      ���� 0 shellresponse  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� ����
�� 
errn� o      ���� 0 errnum errNum� �����
�� 
erob� o      ���� 0 	badobject 	badObject��  � k   1 ?�� ��� I  1 6�����
�� .JonspClpnull���     ****� l  1 2������ o   1 2���� 0 oldclipboard oldClipboard��  ��  ��  � ���� R   7 ?����
�� .ascrerr ****      � ****� o   = >���� 0 errmsg errMsg� ����
�� 
errn� o   9 :���� 0 errnum errNum� �����
�� 
erob� o   ; <���� 0 	badobject 	badObject��  ��  � ��� I  @ E�����
�� .JonspClpnull���     ****� l  @ A������ o   @ A���� 0 oldclipboard oldClipboard��  ��  ��  � ���� o   F G���� 0 shellresponse  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � : 4 Handling of environment settings using a plist file   � ��� h   H a n d l i n g   o f   e n v i r o n m e n t   s e t t i n g s   u s i n g   a   p l i s t   f i l e� ��� l     ������  � L F $Id: EnvironmentPlist.applescript,v 1.1 2008/01/03 16:49:41 mjb Exp $   � ��� �   $ I d :   E n v i r o n m e n t P l i s t . a p p l e s c r i p t , v   1 . 1   2 0 0 8 / 0 1 / 0 3   1 6 : 4 9 : 4 1   m j b   E x p   $� ��� l     ��������  ��  ��  � ��� i  T W��� I      ������� 20 writedefaultenvironment writeDefaultEnvironment��  � �����
�� 
at  � o      ���� 0 envpath envPath��  � k     6�� ��� r     � � I    ������
�� .JonsgClp****    ��� null��  ��    o      ����  0 savedclipboard savedClipboard�  I   ����
�� .JonspClpnull���     **** m    	 �z < ? x m l   v e r s i o n = " 1 . 0 "   e n c o d i n g = " U T F - 8 " ? > 
 < ! D O C T Y P E   p l i s t   P U B L I C   " - / / A p p l e   C o m p u t e r / / D T D   P L I S T   1 . 0 / / E N "   " h t t p : / / w w w . a p p l e . c o m / D T D s / P r o p e r t y L i s t - 1 . 0 . d t d " > 
 < p l i s t   v e r s i o n = " 1 . 0 " > 
 < d i c t / > 
 < / p l i s t >��    Q    0	
 I   ����
�� .sysoexecTEXT���     TEXT b     m     �  p b p a s t e   >   l   ���� n     1    ��
�� 
psxp o    ���� 0 envpath envPath��  ��  ��  	 R      ��
�� .ascrerr ****      � **** o      ���� 0 errmsg errMsg ��
�� 
errn o      ���� 0 errnum errNum ����
�� 
erob o      ���� 0 	badobject 	badObject��  
 k   " 0  I  " '����
�� .JonspClpnull���     **** l  " #���� o   " #��  0 savedclipboard savedClipboard��  ��  ��   �~ R   ( 0�}
�} .ascrerr ****      � **** o   . /�|�| 0 errmsg errMsg �{ !
�{ 
errn  o   * +�z�z 0 errnum errNum! �y"�x
�y 
erob" o   , -�w�w 0 	badobject 	badObject�x  �~   #�v# I  1 6�u$�t
�u .JonspClpnull���     ****$ l  1 2%�s�r% o   1 2�q�q  0 savedclipboard savedClipboard�s  �r  �t  �v  � &'& l     �p�o�n�p  �o  �n  ' ()( i  X [*+* I      �m�l,�m "0 openenvironment openEnvironment�l  , �k-.
�k 
at  - o      �j�j 0 envfilepath envFilePath. �i/�h�i 60 settingdefaultenvironment settingDefaultEnvironment/ o      �g�g $0 shouldsetdefault shouldSetDefault�h  + O     8010 k    722 343 Z    .56�f�e5 H    77 l   8�d�c8 I   �b9�a
�b .coredoexbool        obj 9 4    �`:
�` 
file: o    �_�_ 0 envfilepath envFilePath�a  �d  �c  6 Z    *;<�^=; o    �]�] $0 shouldsetdefault shouldSetDefault< I   �\>?�\ 20 writedefaultenvironment writeDefaultEnvironment>  f    ? �[@�Z
�[ 
at  @ o    �Y�Y 0 envfilepath envFilePath�Z  �^  = R    *�XAB
�X .ascrerr ****      � ****A l  " )C�W�VC b   " )DED b   " 'FGF b   " %HIH m   " #JJ �KK 6 C a n ' t   g e t   e n v i r o n m e n t   f i l e  I 1   # $�U
�U 
quotG o   % &�T�T 0 envfilepath envFilePathE 1   ' (�S
�S 
quot�W  �V  B �RL�Q
�R 
errnL m     !�P�P�@�Q  �f  �e  4 M�OM I  / 7�NN�M
�N .aevtodocnull  �    alisN 4   / 3�LO
�L 
fileO o   1 2�K�K 0 envfilepath envFilePath�M  �O  1 m     PP�                                                                                  sevs   alis    �  Macintosh HD               ��W	H+     tSystem Events.app                                                ���f�W        ����  	                CoreServices    ��:�      �f�7       t   0   /  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ) QRQ l     �J�I�H�J  �I  �H  R STS i  \ _UVU I      �G�FW�G "0 readenvironment readEnvironment�F  W �EX�D
�E 
outoX o      �C�C 	0 plist  �D  V k     YY Z[Z I    �B�A\�B 0 readlistpair readListPair�A  \ �@]�?
�@ 
outo] o    �>�> 	0 plist  �?  [ ^�=^ I   �<�;_�< &0 environmentstring environmentString�;  _ �:`�9
�: 
from` 1   
 �8
�8 
rslt�9  �=  T aba l     �7�6�5�7  �6  �5  b cdc i  ` cefe I      �4�3g�4 0 readlistpair readListPair�3  g �2h�1
�2 
outoh o      �0�0 	0 plist  �1  f O     0iji Z    /kl�/mk I   �.n�-
�. .coredoexbool        obj n 4    �,o
�, 
fileo o    �+�+ 	0 plist  �-  l O    &pqp e    %rr n    %sts J    $uu vwv 1    �*
�* 
pnamw x�)x 1     �(
�( 
valL�)  t 2    �'
�' 
pliiq 4    �&y
�& 
plify o    �%�% 	0 plist  �/  m J   ) /zz {|{ J   ) +�$�$  | }�#} J   + -�"�"  �#  j m     ~~�                                                                                  sevs   alis    �  Macintosh HD               ��W	H+     tSystem Events.app                                                ���f�W        ����  	                CoreServices    ��:�      �f�7       t   0   /  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  d � l     �!� ��!  �   �  � ��� i   d g��� I      ���� &0 environmentstring environmentString�  � ���
� 
from� o      �� $0 keyvaluelistpair keyValueListPair�  � k     h�� ��� r     ��� o     �� $0 keyvaluelistpair keyValueListPair� J      �� ��� o      �� 0 	plistkeys 	plistKeys� ��� o      �� 0 plistvalues plistValues�  � ��� r    ��� J    ��  � o      �� 0 accumulator  � ��� r    ��� n    ��� 1    �
� 
txdl� 1    �
� 
ascr� o      �� 0 oldtids oldTIDs� ��� r    !��� m    �� ���  � n      ��� 1     �
� 
txdl� 1    �
� 
ascr� ��� Y   " T������ k   1 O�� ��� r   1 D��� J   1 >�� ��� m   1 2�� ���  e x p o r t  � ��� n   2 6��� 4   3 6��
� 
cobj� o   4 5�� 0 i  � o   2 3�
�
 0 	plistkeys 	plistKeys� ��� m   6 7�� ���  =� ��� n   7 ;��� 4   8 ;�	�
�	 
cobj� o   9 :�� 0 i  � o   7 8�� 0 plistvalues plistValues� ��� m   ; <�� ���  ;�  � o      �� 
0 tokens  � ��� s   E O��� l  E L���� c   E L��� o   E J�� 
0 tokens  � m   J K� 
�  
TEXT�  �  � l     ������ n      ���  ;   M N� l  L M������ o   L M���� 0 accumulator  ��  ��  ��  ��  �  � 0 i  � m   % &���� � n   & ,��� m   ) +��
�� 
nmbr� n  & )��� 2  ' )��
�� 
cobj� o   & '���� 0 	plistkeys 	plistKeys�  � ��� r   U Z��� 1   U V��
�� 
spac� n     ��� 1   W Y��
�� 
txdl� 1   V W��
�� 
ascr� ��� r   [ `��� c   [ ^��� o   [ \���� 0 accumulator  � m   \ ]��
�� 
TEXT� o      ���� 0 	envstring 	envString� ��� r   a f��� o   a b���� 0 oldtids oldTIDs� n     ��� 1   c e��
�� 
txdl� 1   b c��
�� 
ascr� ���� o   g h���� 0 	envstring 	envString��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       �������������������������� ��  � �������������������������������������������������������� 0 seescriptsettings  �� "0 modeenvironment modeEnvironment�� 0 moderesources modeResources�� 20 openenvironmentsettings openEnvironmentSettings�� *0 environmentfilepath environmentFilePath�� .0 completeselectedlines completeSelectedLines�� 0 selectiontext selectionText�� $0 setselectiontext setSelectionText��  0 selectionrange selectionRange�� &0 setselectionrange setSelectionRange�� .0 extendedselectiontext extendedSelectionText�� "0 extendselection extendSelection�� "0 checksavestatus checkSaveStatus�� *0 requirenewlineateof requireNewlineAtEOF�� 0 documentpath documentPath�� 0 documentline documentLine�� 0 replacement  �� 
0 tokens  �� 0 join  �� $0 doublequotedform doubleQuotedForm��  0 shelltransform shellTransform�� 20 writedefaultenvironment writeDefaultEnvironment�� "0 openenvironment openEnvironment�� "0 readenvironment readEnvironment�� 0 readlistpair readListPair�� &0 environmentstring environmentString
�� .aevtoappnull  �   � ****� �� D�������� 0 seescriptsettings  ��  ��     �� H�� L�� O���� 0 displayname displayName�� $0 keyboardshortcut keyboardShortcut�� 0 incontextmenu inContextMenu�� �� 	�������� �� i�������� "0 modeenvironment modeEnvironment��  ��      o s������ {���������� ���
�� 
for �� 0 moderesources modeResources�� $0 doublequotedform doubleQuotedForm
�� 
outo�� *0 environmentfilepath environmentFilePath�� "0 readenvironment readEnvironment�� 
�� 
by  �� 0 join  �� "��*�*j+ l �*�*j+ l �v��l � �� �����	���� 0 moderesources modeResources��  ��    	  �������
�� 
docu
�� 
Mode
�� 
pMrp�� � *�k/�,�,EU� �� �����
���� 20 openenvironmentsettings openEnvironmentSettings��  ��  
   ����������
�� 
at  �� *0 environmentfilepath environmentFilePath�� 60 settingdefaultenvironment settingDefaultEnvironment�� �� "0 openenvironment openEnvironment�� *�*j+ �e� � �� ��������� *0 environmentfilepath environmentFilePath��  ��   ���� 0 modename modeName  ��������������������� � ��� ���
�� 
docu
�� 
Mode
�� 
pnam
�� afdrpref
�� 
from
�� fldmfldu
�� 
rtyp
�� 
TEXT�� 
�� .earsffdralis        afdr
�� 
by  �� 0 join  �� %� *�k/�,�,E�UO������ 
���v��l � �� ��������� .0 completeselectedlines completeSelectedLines��  ��     ����������  0 extendingfront extendingFront�� 0 extendingend extendingEnd�� �� "0 extendselection extendSelection�� 
*�e�e� � �� ��������� 0 selectiontext selectionText��  ��      �������
�� 
docu
�� 
pSel
�� 
pTxt�� ��k/ *�,�,EU� �� ���~�}�� $0 setselectiontext setSelectionText�  �~ �|�{�z
�| 
to  �{ 0 newtext newText�z   �y�y 0 newtext newText �x�w�v
�x 
docu
�w 
pSel
�v 
pTxt�} � �*�k/�,�,FU� �u�t�s�r�u  0 selectionrange selectionRange�t  �s �q�p�q  0 extendingfront extendingFront�p &0 shouldextendfront shouldExtendFront �o�n�m�o 0 extendingend extendingEnd�n "0 shouldextendend shouldExtendEnd�m   �l�k�l &0 shouldextendfront shouldExtendFront�k "0 shouldextendend shouldExtendEnd \�j�i�h�g�f�e
�j 
docu
�i 
bool
�h 
pSel
�g 
cpar
�f 
pIdS
�e 
pIdN�r h��k/ a�	 ��& *�,�k/�,E*�,�i/�,ElvY @� *�,�k/�,E*�,�,ElvY (� *�,�,E*�,�i/�,ElvY *�,�,E*�,�,ElvU� �db�c�b�a�d &0 setselectionrange setSelectionRange�c  �b �`�_�^
�` 
to  �_ 0 newrange newRange�^   �]�] 0 newrange newRange m�\�[
�\ 
docu
�[ 
pSel�a ��k/ �*�,FU� �Zs�Y�X�W�Z .0 extendedselectiontext extendedSelectionText�Y  �X �V�U�V  0 extendingfront extendingFront�U &0 shouldextendfront shouldExtendFront �T�S�R�T 0 extendingend extendingEnd�S "0 shouldextendend shouldExtendEnd�R   �Q�P�O�N�Q &0 shouldextendfront shouldExtendFront�P "0 shouldextendend shouldExtendEnd�O 0 	startchar 	startChar�N 0 nextchar nextChar �M�L�K�J�I�H�G�F��E�D�C�B
�M 
Krtn�L 0 	startchar 	startChar�K 0 nextchar nextChar�J  0 extendingfront extendingFront�I 0 extendingend extendingEnd�H �G  0 selectionrange selectionRange
�F 
cobj
�E 
docu
�D 
cha 
�C 
pTxt
�B 
ctxt�W 8*���lv��� E[�k/E�Z[�l/E�ZO��k/ *[�\[Z�\Z�k2�,�&U� �A��@�?�>�A "0 extendselection extendSelection�@  �? �=�<�=  0 extendingfront extendingFront�< &0 shouldextendfront shouldExtendFront �;�:�9�; 0 extendingend extendingEnd�: "0 shouldextendend shouldExtendEnd�9   �8�7�6�5�8 &0 shouldextendfront shouldExtendFront�7 "0 shouldextendend shouldExtendEnd�6 0 	startchar 	startChar�5 0 nextchar nextChar 
�4�3�2�1�0�/�.�-�,�+
�4 
Krtn�3 0 	startchar 	startChar�2 0 nextchar nextChar�1  0 extendingfront extendingFront�0 0 extendingend extendingEnd�/ �.  0 selectionrange selectionRange
�- 
cobj
�, 
to  �+ &0 setselectionrange setSelectionRange�> +*���lv��� E[�k/E�Z[�l/E�ZO*袣klvl 	� �*��)�( �'�* "0 checksavestatus checkSaveStatus�)  �( �&�%�$�& 0 updating  �% 0 
shouldsave 
shouldSave�$   �#�# 0 
shouldsave 
shouldSave  
��"�!� ������
�" 
docu
�! 
ppth
�  .coredoexbool        obj 
� 
imod
� 
bool
� .coresavenull���     obj �  �  �' E� A*�k/�,j  	)j�Y hO�	 *�k/�,E�&  *�k/j W X  	hY hU� ����!"�� *0 requirenewlineateof requireNewlineAtEOF�  �  !  " ������
� 
docu
� 
cpar
� 
pTxt
� 
ret 
� 
cins� #��k/ �*�i/�,  hY �*�i/�i/�,FU� ���#$�� 0 documentpath documentPath�  �  #  $ ��
� 
docu
� 
ppth� � 	*�k/�,EU� �!�
�	%&�� 0 documentline documentLine�
  �	  %  & +���
� 
docu
� 
pSel
� 
pSln� � *�k/�,�,EU� �=��'(�� 0 replacement  � 0 olddelim oldDelim� � ��)
�  
by  �� 0 newdelim newDelim) ������
�� 
for �� 0 sourcestring sourceString��  ' �������� 0 olddelim oldDelim�� 0 newdelim newDelim�� 0 sourcestring sourceString( ��������
�� 
btwn�� 
0 tokens  
�� 
by  �� 0 join  � ��l �l � ��P����*+���� 
0 tokens  �� 0 str  �� ������
�� 
btwn�� 0 
delimiters  ��  * ���������� 0 str  �� 0 
delimiters  �� 0 oldtids oldTIDs�� 0 strtoks  + ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�� ��t����,-���� 0 join  �� 0 	tokenlist 	tokenList�� ������
�� 
by  �� 0 	delimiter  ��  , ���������� 0 	tokenlist 	tokenList�� 0 	delimiter  �� 0 oldtids oldTIDs�� 0 joinedstring joinedString- ������
�� 
ascr
�� 
txdl
�� 
TEXT�� ��,E�O���,FO��&E�O���,FO�� �������./���� $0 doublequotedform doubleQuotedForm��  �� ������
�� 
for �� 0 
basestring 
baseString��  . ���� 0 
basestring 
baseString/ ��
�� 
quot�� ��%�%� �������01����  0 shelltransform shellTransform�� 0 intext inText�� ����2
�� 
for �� 0 	envstring 	envString2 ����3
�� 
thru�� 0 pipeline  3 �������� *0 alteringlineendings alteringLineEndings�� 0 altends altEnds��  0 
���������������������� 0 intext inText�� 0 	envstring 	envString�� 0 pipeline  �� 0 altends altEnds�� 0 shellscript  �� 0 oldclipboard oldClipboard�� 0 shellresponse  �� 0 errmsg errMsg�� 0 errnum errNum�� 0 	badobject 	badObject1 ��������������������4������ 
�� 
by  
�� 
spac�� 0 join  
�� .JonsgClp****    ��� null
�� .JonspClpnull���     ****
�� 
alen
�� .sysoexecTEXT���     TEXT�� 0 errmsg errMsg4 ����5
�� 
errn�� 0 errnum errNum5 ������
�� 
erob�� 0 	badobject 	badObject��  
�� 
errn
�� 
erob�� H����v��l E�O*j E�O�j O ��l 	E�W X 
 �j O)����O�j O�� �������67���� 20 writedefaultenvironment writeDefaultEnvironment��  �� ������
�� 
at  �� 0 envpath envPath��  6 ������������ 0 envpath envPath��  0 savedclipboard savedClipboard�� 0 errmsg errMsg�� 0 errnum errNum�� 0 	badobject 	badObject7 ����������8������
�� .JonsgClp****    ��� null
�� .JonspClpnull���     ****
�� 
psxp
�� .sysoexecTEXT���     TEXT�� 0 errmsg errMsg8 ����9
�� 
errn�� 0 errnum errNum9 ������
�� 
erob�� 0 	badobject 	badObject��  
�� 
errn
�� 
erob�� �� 7*j  E�O�j O ��,%j W X  �j O)���O�j � ��+����:;���� "0 openenvironment openEnvironment��  �� ����<
�� 
at  �� 0 envfilepath envFilePath< �������� 60 settingdefaultenvironment settingDefaultEnvironment�� $0 shouldsetdefault shouldSetDefault��  : ������ 0 envfilepath envFilePath�� $0 shouldsetdefault shouldSetDefault; 
P������������J���
�� 
file
�� .coredoexbool        obj 
�� 
at  �� 20 writedefaultenvironment writeDefaultEnvironment
�� 
errn���@
�� 
quot
� .aevtodocnull  �    alis�� 9� 5*�/j  � )�l Y )��l��%�%�%Y hO*�/j 	U  �~V�}�|=>�{�~ "0 readenvironment readEnvironment�}  �| �z�y�x
�z 
outo�y 	0 plist  �x  = �w�w 	0 plist  > �v�u�t�s�r
�v 
outo�u 0 readlistpair readListPair
�t 
from
�s 
rslt�r &0 environmentstring environmentString�{ *�l O*��l  �qf�p�o?@�n�q 0 readlistpair readListPair�p  �o �m�l�k
�m 
outo�l 	0 plist  �k  ? �j�j 	0 plist  @ ~�i�h�g�f�e�d
�i 
file
�h .coredoexbool        obj 
�g 
plif
�f 
plii
�e 
pnam
�d 
valL�n 1� -*�/j  *�/ *�-[�,\[�,\ZlvEUY jvjvlvU �c��b�aAB�`�c &0 environmentstring environmentString�b  �a �_�^�]
�_ 
from�^ $0 keyvaluelistpair keyValueListPair�]  A �\�[�Z�Y�X�W�V�\ $0 keyvaluelistpair keyValueListPair�[ 0 	plistkeys 	plistKeys�Z 0 plistvalues plistValues�Y 0 accumulator  �X 0 oldtids oldTIDs�W 0 i  �V 0 	envstring 	envStringB �U�T�S��R����Q�P�O
�U 
cobj
�T 
ascr
�S 
txdl
�R 
nmbr�Q 
�P 
TEXT
�O 
spac�` i�E[�k/E�Z[�l/E�ZOjvE�O��,E�O���,FO 1k��-�,Ekh ��/��/��vEc  Ob  �&�6G[OY��O���,FO��&E�O���,FO� �NC�M�LDE�K
�N .aevtoappnull  �   � ****C k     1FF  GG  HH  #II  &JJ  3�J�J  �M  �L  D  E �I�H�G �F�E�D�C�B�A�@�?�>�=�<�I "0 modeenvironment modeEnvironment�H 0 env  
�G 
for �F $0 doublequotedform doubleQuotedForm�E 0 pipeline  �D .0 completeselectedlines completeSelectedLines�C 0 selectiontext selectionText
�B 
thru�A *0 alteringlineendings alteringLineEndings�@ �?  0 shelltransform shellTransform�> 0 outtext outText
�= 
to  �< $0 setselectiontext setSelectionText�K 2*j+  E�O*��l E�O*j+ O*j+ �����f� E�O*��l  ascr  ��ޭ