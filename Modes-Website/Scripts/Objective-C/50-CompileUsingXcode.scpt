FasdUAS 1.101.10   ��   ��    k             l     ��  ��    9 3 Compiles the Xcode Project the selected file is in     � 	 	 f   C o m p i l e s   t h e   X c o d e   P r o j e c t   t h e   s e l e c t e d   f i l e   i s   i n   
  
 l     ��������  ��  ��        l     ��  ��    � �---------------------------------------------------------------------------------------------------------------------- SeeSettings     �   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   S e e S e t t i n g s      i         I      �������� 0 seescriptsettings  ��  ��    L     	   K        ��  �� $0 keyboardshortcut keyboardShortcut  m       �    @ b  ��  �� 0 displayname displayName  m       �   & C o m p i l e   U s i n g   X c o d e  �� ���� $0 shortdisplayname shortDisplayName  m         � ! !  C o m p i l e��     " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & � �---------------------------------------------------------------------------------------------------------------------- The actual Script    ' � ( ( - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   T h e   a c t u a l   S c r i p t %  ) * ) l     ��������  ��  ��   *  + , + l    > -���� - O     > . / . Z    = 0 1�� 2 0 I   �� 3��
�� .coredoexnull���     **** 3 l    4���� 4 n     5 6 5 1    ��
�� 
psxp 6 l    7���� 7 c     8 9 8 n    
 : ; : m    
��
�� 
file ; 4   �� <
�� 
docu < m    ����  9 m   
 ��
�� 
ctxt��  ��  ��  ��  ��   1 k    6 = =  > ? > Q    ) @ A�� @ I    �� B��
�� .coresavenull���     obj  B 4   �� C
�� 
docu C m    ���� ��   A R      ������
�� .ascrerr ****      � ****��  ��  ��   ?  D�� D r   * 6 E F E n   * 4 G H G 1   2 4��
�� 
psxp H l  * 2 I���� I c   * 2 J K J n   * 0 L M L m   . 0��
�� 
file M 4  * .�� N
�� 
docu N m   , -����  K m   0 1��
�� 
ctxt��  ��   F o      ���� 0 documentpath documentPath��  ��   2 R   9 =�� O��
�� .ascrerr ****      � **** O m   ; < P P � Q Q F Y o u   h a v e   t o   s a v e   t h e   d o c u m e n t   f i r s t��   / m      R R(                                                                                  Hdra  alis    �  	BuildDisk                  ϒ�H+   hcSubEthaEdit.app                                                  jwϗ��        ����  	               Debug     ϒ��      ϗϭ      hc  h,  h&  =�  RBuildDisk:SubEthaEdit-hdnlodhxzchzvx#3D9F: Build: Products: Debug: SubEthaEdit.app     S u b E t h a E d i t . a p p   	 B u i l d D i s k  N/SubEthaEdit-hdnlodhxzchzvxauuucuarwnjpsq/Build/Products/Debug/SubEthaEdit.app  /Volumes/BuildDisk��  ��  ��   ,  S T S l     ��������  ��  ��   T  U V U l     �� W X��   W 2 , using 'external' to get the xcode workspace    X � Y Y X   u s i n g   ' e x t e r n a l '   t o   g e t   t h e   x c o d e   w o r k s p a c e V  Z [ Z l  ? K \���� \ r   ? K ] ^ ] I   ? I�� _���� ~0 =posixpathbydeletinglastpathcomponentandaddinghelperscriptpath =posixPathByDeletingLastPathcomponentAndAddingHelperScriptPath _  `�� ` I  @ E�� a��
�� .earsffdralis        afdr a  f   @ A��  ��  ��   ^ o      ���� 0 
scriptpath 
scriptPath��  ��   [  b c b l  L X d���� d r   L X e f e I  L T�� g��
�� .sysoloadscpt        file g 4   L P�� h
�� 
psxf h l  N O i���� i o   N O���� 0 
scriptpath 
scriptPath��  ��  ��   f o      ���� *0 projecthelperscript projectHelperScript��  ��   c  j k j l     ��������  ��  ��   k  l m l l  Y j n���� n O   Y j o p o r   _ i q r q I   _ e�� s���� H0 "ensurexcodeprojectforposixfilepath "ensureXcodeProjectForPosixFilePath s  t�� t o   ` a���� 0 documentpath documentPath��  ��   r o      ���� 0 myworkspace myWorkspace p o   Y \���� *0 projecthelperscript projectHelperScript��  ��   m  u v u l     ��������  ��  ��   v  w x w l     �� y z��   y  log myWorkspace as list    z � { { . l o g   m y W o r k s p a c e   a s   l i s t x  | } | l     �� ~ ��   ~  set myWorkspace to false     � � � 0 s e t   m y W o r k s p a c e   t o   f a l s e }  � � � l     ��������  ��  ��   �  � � � l  k � ����� � Z   k � � ��� � � l  k p ����� � >  k p � � � o   k n���� 0 myworkspace myWorkspace � m   n o��
�� boovfals��  ��   � O   s � � � � k   y � � �  � � � I  y ~������
�� .miscactvnull��� ��� null��  ��   �  ��� � P    � ��� � � I  � ��� ���
�� .pbpsbuiinull���     obj  � o   � ����� 0 myworkspace myWorkspace��  ��   � ����
�� consrmte��  ��   � m   s v � ��                                                                                      @ alis    .  jon                        �AH+  ��	Xcode.app                                                      ��2���P        ����  	                Applications    �@��      ���@    ��  jon:Applications: Xcode.app    	 X c o d e . a p p    j o n  Applications/Xcode.app  / ��  ��   � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � � ` N o   P r o j e c t   c o n t a i n i n g   t h e   c u r r e n t   d o c u m e n t   f o u n d��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � �---------------------------------------------------------------------------------------------------------------------- Helper - Path to helper script    � � � �* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   H e l p e r   -   P a t h   t o   h e l p e r   s c r i p t �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� ~0 =posixpathbydeletinglastpathcomponentandaddinghelperscriptpath =posixPathByDeletingLastPathcomponentAndAddingHelperScriptPath �  ��� � o      ���� 0 apath aPath��  ��   � k     | � �  � � � r      � � � m     ��
�� boovfals � o      ���� 0 myresult myResult �  � � � l   �� � ���   � $ set myFile to POSIX file aPath    � � � � < s e t   m y F i l e   t o   P O S I X   f i l e   a P a t h �  � � � r     � � � o    ���� 0 apath aPath � o      ���� 0 myfile myFile �  � � � r     � � � n    � � � 1   	 �
� 
txdl � 1    	�~
�~ 
ascr � o      �}�} 0 olddelimiters oldDelimiters �  � � � r     � � � J     � �  ��| � m     � � � � �  :�|   � n      � � � 1    �{
�{ 
txdl � 1    �z
�z 
ascr �  � � � r     � � � n     � � � 2   �y
�y 
citm � l    ��x�w � c     � � � o    �v�v 0 myfile myFile � m    �u
�u 
ctxt�x  �w   � o      �t�t 0 	pathitems 	pathItems �  � � � Z    > � ��s�r � =   $ � � � n    " � � � 4   "�q �
�q 
cobj � m     !�p�p�� � o    �o�o 0 	pathitems 	pathItems � m   " # � � � � �   � r   ' : � � � n   ' 8 � � � 7  ( 8�n � �
�n 
cobj � m   , .�m�m  � l  / 7 ��l�k � \   / 7 � � � l  0 5 ��j�i � I  0 5�h ��g
�h .corecnte****       **** � o   0 1�f�f 0 	pathitems 	pathItems�g  �j  �i   � m   5 6�e�e �l  �k   � o   ' (�d�d 0 	pathitems 	pathItems � o      �c�c 0 	pathitems 	pathItems�s  �r   �  � � � Z   ? s � ��b�a � ?   ? F � � � l  ? D ��`�_ � I  ? D�^ ��]
�^ .corecnte****       **** � o   ? @�\�\ 0 	pathitems 	pathItems�]  �`  �_   � m   D E�[�[  � k   I o � �  � � � r   I \ � � � n   I Z � � � 7  J Z�Z � �
�Z 
cobj � m   N P�Y�Y  � l  Q Y ��X�W � \   Q Y � � � l  R W ��V�U � I  R W�T ��S
�T .corecnte****       **** � o   R S�R�R 0 	pathitems 	pathItems�S  �V  �U   � m   W X�Q�Q �X  �W   � o   I J�P�P 0 	pathitems 	pathItems � o      �O�O 0 	pathitems 	pathItems �  � � � r   ] f � � � l  ] d ��N�M � c   ] d   b   ] b l  ] `�L�K c   ] ` o   ] ^�J�J 0 	pathitems 	pathItems m   ^ _�I
�I 
TEXT�L  �K   m   ` a � 8 : h e l p e r : x c o d e P a t h H e l p e r . s c p t m   b c�H
�H 
TEXT�N  �M   � o      �G�G 0 myresult myResult � 	�F	 r   g o

 n   g m 1   k m�E
�E 
psxp 4   g k�D
�D 
file o   i j�C�C 0 myresult myResult o      �B�B 0 myresult myResult�F  �b  �a   �  r   t y o   t u�A�A 0 olddelimiters oldDelimiters n      1   v x�@
�@ 
txdl 1   u v�?
�? 
ascr  l  z z�>�>    log myResult    �  l o g   m y R e s u l t �= L   z | o   z {�<�< 0 myresult myResult�=   � �; l     �:�9�8�:  �9  �8  �;       �7 �7   �6�5�4�6 0 seescriptsettings  �5 ~0 =posixpathbydeletinglastpathcomponentandaddinghelperscriptpath =posixPathByDeletingLastPathcomponentAndAddingHelperScriptPath
�4 .aevtoappnull  �   � **** �3 �2�1!"�0�3 0 seescriptsettings  �2  �1  !  " �/ �. �-  �,�/ $0 keyboardshortcut keyboardShortcut�. 0 displayname displayName�- $0 shortdisplayname shortDisplayName�, �0 
������� �+ ��*�)#$�(�+ ~0 =posixpathbydeletinglastpathcomponentandaddinghelperscriptpath =posixPathByDeletingLastPathcomponentAndAddingHelperScriptPath�* �'%�' %  �&�& 0 apath aPath�)  # �%�$�#�"�!�% 0 apath aPath�$ 0 myresult myResult�# 0 myfile myFile�" 0 olddelimiters oldDelimiters�! 0 	pathitems 	pathItems$ � � ���� �����
�  
ascr
� 
txdl
� 
ctxt
� 
citm
� 
cobj
� .corecnte****       ****
� 
TEXT
� 
file
� 
psxp�( }fE�O�E�O��,E�O�kv��,FO��&�-E�O��i/�  �[�\[Zk\Z�j k2E�Y hO�j k +�[�\[Zk\Z�j k2E�O��&�%�&E�O*�/�,E�Y hO���,FO�  �&��'(�
� .aevtoappnull  �   � ****& k     �))  +**  Z++  b,,  l--  ���  �  �  '  (  R���������
 P�	������� �� ��  ���
� 
docu
� 
file
� 
ctxt
� 
psxp
� .coredoexnull���     ****
� .coresavenull���     obj �  �  �
 0 documentpath documentPath
�	 .earsffdralis        afdr� ~0 =posixpathbydeletinglastpathcomponentandaddinghelperscriptpath =posixPathByDeletingLastPathcomponentAndAddingHelperScriptPath� 0 
scriptpath 
scriptPath
� 
psxf
� .sysoloadscpt        file� *0 projecthelperscript projectHelperScript� H0 "ensurexcodeprojectforposixfilepath "ensureXcodeProjectForPosixFilePath� 0 myworkspace myWorkspace
� .miscactvnull��� ��� null
�  .pbpsbuiinull���     obj 
�� .sysodlogaskr        TEXT� �� ;*�k/�,�&�,j  & *�k/j W X  hO*�k/�,�&�,E�Y )j�UO*)j k+ E�O*��/j E` O_  *�k+ E` UO_ f !a  *j Oga  
_ j VUY 	a j  ascr  ��ޭ