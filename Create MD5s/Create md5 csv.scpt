FasdUAS 1.101.10   ��   ��    k             l     ��  ��      THIS IS A HEDGE SCRIPT     � 	 	 .   T H I S   I S   A   H E D G E   S C R I P T   
  
 l     ��  ��    * $ Copyright (c) 2019 The Sync Factory     �   H   C o p y r i g h t   ( c )   2 0 1 9   T h e   S y n c   F a c t o r y      l     ��  ��      License: MIT License     �   *   L i c e n s e :   M I T   L i c e n s e      l     ��  ��    ? 9 Repository: https://github.com/HedgeForMac/hedge-scripts     �   r   R e p o s i t o r y :   h t t p s : / / g i t h u b . c o m / H e d g e F o r M a c / h e d g e - s c r i p t s      l     ��������  ��  ��        l     ��  ��    6 0 You can do whatever you like with this script.      �   `   Y o u   c a n   d o   w h a t e v e r   y o u   l i k e   w i t h   t h i s   s c r i p t .       !   l     �� " #��   " d ^ If you add something useful, please fork this repo or send it to us at hello@hedgeformac.com.    # � $ $ �   I f   y o u   a d d   s o m e t h i n g   u s e f u l ,   p l e a s e   f o r k   t h i s   r e p o   o r   s e n d   i t   t o   u s   a t   h e l l o @ h e d g e f o r m a c . c o m . !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   )   DISCLAIMER    * � + +    D I S C L A I M E R (  , - , l     �� . /��   . g a Scripting is a very powerful feature, depending on the script it can be potentially destructive.    / � 0 0 �   S c r i p t i n g   i s   a   v e r y   p o w e r f u l   f e a t u r e ,   d e p e n d i n g   o n   t h e   s c r i p t   i t   c a n   b e   p o t e n t i a l l y   d e s t r u c t i v e . -  1 2 1 l     �� 3 4��   3 G A Do not use it unless you really know what you can and can't do.     4 � 5 5 �   D o   n o t   u s e   i t   u n l e s s   y o u   r e a l l y   k n o w   w h a t   y o u   c a n   a n d   c a n ' t   d o .   2  6 7 6 l     �� 8 9��   8 p j The Sync Factory doesn't offer support or assume responsibility for problems with or due to your scripts.    9 � : : �   T h e   S y n c   F a c t o r y   d o e s n ' t   o f f e r   s u p p o r t   o r   a s s u m e   r e s p o n s i b i l i t y   f o r   p r o b l e m s   w i t h   o r   d u e   t o   y o u r   s c r i p t s . 7  ; < ; l     ��������  ��  ��   <  = > = l     �� ? @��   ?  	 README:     @ � A A    R E A D M E :   >  B C B l     �� D E��   D P J This script creates a CSV file, with two columns: md5 checksum & filepath    E � F F �   T h i s   s c r i p t   c r e a t e s   a   C S V   f i l e ,   w i t h   t w o   c o l u m n s :   m d 5   c h e c k s u m   &   f i l e p a t h C  G H G l     �� I J��   I I C Can be used standalone or with Hedge's 'File Copy Completed' event    J � K K �   C a n   b e   u s e d   s t a n d a l o n e   o r   w i t h   H e d g e ' s   ' F i l e   C o p y   C o m p l e t e d '   e v e n t H  L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P  	 SETTINGS    Q � R R    S E T T I N G S O  S T S l     �� U V��   U , & Define your separator used in the CSV    V � W W L   D e f i n e   y o u r   s e p a r a t o r   u s e d   i n   t h e   C S V T  X Y X l     ��������  ��  ��   Y  Z [ Z l     \���� \ r      ] ^ ] m      _ _ � ` `  , ^ o      ���� 0 	separator  ��  ��   [  a b a l     ��������  ��  ��   b  c d c l     �� e f��   e 1 + Do you want macOS progress notifications?     f � g g V   D o   y o u   w a n t   m a c O S   p r o g r e s s   n o t i f i c a t i o n s ?   d  h i h l     �� j k��   j o i Tip: set the notifications created by Script Editor to 'banners' (in System Preferences > Notifications)    k � l l �   T i p :   s e t   t h e   n o t i f i c a t i o n s   c r e a t e d   b y   S c r i p t   E d i t o r   t o   ' b a n n e r s '   ( i n   S y s t e m   P r e f e r e n c e s   >   N o t i f i c a t i o n s ) i  m n m l     ��������  ��  ��   n  o p o l    q���� q r     r s r m    ��
�� boovtrue s o      ���� &0 shownotifications showNotifications��  ��   p  t u t l    v w x v r     y z y m    	��
�� boovtrue z o      ���� $0 showconfirmation showConfirmation w ( " when using this script with Hedge    x � { { D   w h e n   u s i n g   t h i s   s c r i p t   w i t h   H e d g e u  | } | l     ��������  ��  ��   }  ~  ~ l   V ����� � Z    V � ��� � � I    �� ����� $0 runningfromhedge runningFromHedge �  ��� � m     � � � � � " F i l e C o p y C o m p l e t e d��  ��   � k    6 � �  � � � Z    & � ����� � o    ���� $0 showconfirmation showConfirmation � I   "�� ���
�� .sysodlogaskr        TEXT � b     � � � b     � � � m     � � � � � N C r e a t e   M D 5   C h e c k s u m s   f o r   t h e   f i l e s   i n   ' � o    ���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath � m     � � � � �  ' ?��  ��  ��   �  � � � l  ' '�� � ���   �   Running from Hedge    � � � � &   R u n n i n g   f r o m   H e d g e �  � � � r   ' * � � � m   ' (��
�� boovfals � o      ���� &0 runningstandalone runningStandAlone �  � � � r   + . � � � m   + , � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � o      ���� 20 filecopycompleted_state fileCopyCompleted_state �  � � � r   / 4 � � � b   / 2 � � � m   / 0 � � � � � F { F i l e C o p y C o m p l e t e d _ d e s t i n a t i o n P a t h } � m   0 1 � � � � �  / � o      ���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath �  ��� � l  5 5��������  ��  ��  ��  ��   � k   9 V � �  � � � l  9 9�� � ���   �   Running standalone    � � � � &   R u n n i n g   s t a n d a l o n e �  � � � r   9 < � � � m   9 :��
�� boovtrue � o      ���� &0 runningstandalone runningStandAlone �  � � � r   = @ � � � m   = > � � � � �  S u c c e s s � o      ���� 20 filecopycompleted_state fileCopyCompleted_state �  ��� � r   A V � � � c   A T � � � n   A P � � � 1   L P��
�� 
psxp � l  A L ����� � I  A L���� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m   E H � � � � � , P l e a s e   c h o o s e   a   f o l d e r��  ��  ��   � m   P S��
�� 
utxt � o      ���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath��  ��  ��     � � � l     ��������  ��  ��   �  � � � l  W: ����� � Z   W: � ����� � =  W \ � � � o   W X���� 20 filecopycompleted_state fileCopyCompleted_state � m   X [ � � � � �  S u c c e s s � t   _6 � � � k   k5 � �  � � � Z  k � � ����� � o   k l���� &0 shownotifications showNotifications � I  o |�� � �
�� .sysonotfnull��� ��� TEXT � m   o r � � � � � * G e t t i n g   f i l e   l i s t . . .   � �� ���
�� 
appr � m   u x � � � � �  H e d g e   S c r i p t��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   get file list    � � � �    g e t   f i l e   l i s t �  � � � r   � � � � � J   � �����   � o      ���� 0 theindex theIndex �  � � � r   � � � � � I   � ��� ����� 0 createindex createIndex �  � � � o   � ����� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath �  ��� � o   � ����� 0 theindex theIndex��  ��   � o      ���� 0 theindex theIndex �  � � � r   � � � � � J   � �����   � o      ���� 0 md5list md5List �  � � � l  � ���������  ��  ��   �  � � � Z  � � ����  o   � ����� &0 shownotifications showNotifications I  � ���
�� .sysonotfnull��� ��� TEXT m   � � � : C a l c u l a t i n g   M D 5   c h e c k s u m s . . .   ����
�� 
appr m   � � �  H e d g e   S c r i p t��  ��  ��   � 	
	 l  � ���������  ��  ��  
  X   �*�� k   �%  Q   � � r   � � I  � ����
�� .sysoexecTEXT���     TEXT b   � � m   � � �  m d 5   - r   l  � ��~�} n   � � 1   � ��|
�| 
strq o   � ��{�{ 0 currentfile currentFile�~  �}  �   o      �z�z 0 	md5result 	md5Result R      �y�x
�y .ascrerr ****      � **** o      �w�w 0 errmsg errMsg�x   I  � ��v �u
�v .sysodisAaleR        TEXT  b   � �!"! m   � �## �$$  W a r n i n g :  " o   � ��t�t 0 errmsg errMsg�u   %&% l  � ��s�r�q�s  �r  �q  & '(' r   � �)*) I   � ��p+�o�p 0 
leftstring 
leftString+ ,-, o   � ��n�n 0 	md5result 	md5Result- .�m. m   � �// �00   �m  �o  * o      �l�l 0 md5  ( 121 r   �343 I   �
�k5�j�k 0 rightstring rightString5 676 o   �i�i 0 	md5result 	md5Result7 8�h8 m  99 �::   �h  �j  4 o      �g�g 0 thepath thePath2 ;<; r  =>= b  ?@? b  ABA o  �f�f 0 md5  B o  �e�e 0 	separator  @ o  �d�d 0 thepath thePath> l     C�c�bC o      �a�a 0 lineitem lineItem�c  �b  < DED l �`�_�^�`  �_  �^  E F�]F s  %GHG o   �\�\ 0 lineitem lineItemH n      IJI  ;  #$J o   #�[�[ 0 md5list md5List�]  �� 0 currentfile currentFile o   � ��Z�Z 0 theindex theIndex KLK l ++�Y�X�W�Y  �X  �W  L M�VM I  +5�UN�T�U 0 
write_file  N OPO o  ,-�S�S F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPathP QRQ o  -0�R�R 0 md5list md5ListR S�QS o  01�P�P &0 shownotifications showNotifications�Q  �T  �V   � l  _ jT�O�NT ]   _ jUVU ]   _ fWXW m   _ b�M�M X m   b e�L�L <V m   f i�K�K <�O  �N  ��  ��  ��  ��   � YZY l     �J�I�H�J  �I  �H  Z [\[ l     �G�F�E�G  �F  �E  \ ]^] l     �D_`�D  _   SUB-ROUTINES   ` �aa    S U B - R O U T I N E S^ bcb l     �C�B�A�C  �B  �A  c ded l     �@fg�@  f 6 0 CREATEINDEX - returns list of all items in path   g �hh `   C R E A T E I N D E X   -   r e t u r n s   l i s t   o f   a l l   i t e m s   i n   p a t he iji i     klk I      �?m�>�? 0 createindex createIndexm non o      �=�= 0 thepath thePatho p�<p o      �;�; 0 theindex theIndex�<  �>  l k     Mqq rsr l     �:�9�8�:  �9  �8  s tut l     �7vw�7  v   use like this:   w �xx    u s e   l i k e   t h i s :u yzy l     �6{|�6  { l f - set FolderPathToScan to POSIX path of (choose folder with prompt "Please select a folder to index")   | �}} �   -   s e t   F o l d e r P a t h T o S c a n   t o   P O S I X   p a t h   o f   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " P l e a s e   s e l e c t   a   f o l d e r   t o   i n d e x " )z ~~ l     �5���5  �   - set theIndex to {}   � ��� *   -   s e t   t h e I n d e x   t o   { } ��� l     �4���4  � @ : - set theIndex to createIndex(FolderPathToScan, theIndex)   � ��� t   -   s e t   t h e I n d e x   t o   c r e a t e I n d e x ( F o l d e r P a t h T o S c a n ,   t h e I n d e x )� ��� l     �3�2�1�3  �2  �1  � ��� r     ��� I     �0��/�0 ,0 getallvisiblefolders getAllVisibleFolders� ��.� o    �-�- 0 thepath thePath�.  �/  � o      �,�, &0 allvisiblefolders allVisibleFolders� ��� r   	 ��� I   	 �+��*�+ (0 getallvisiblefiles getAllVisibleFiles� ��)� o   
 �(�( 0 thepath thePath�)  �*  � o      �'�' "0 allvisiblefiles allVisibleFiles� ��� l   �&�%�$�&  �%  �$  � ��� X    +��#�� s   " &��� o   " #�"�" 0 currentfile currentFile� l     ��!� � n      ���  ;   $ %� o   # $�� 0 theindex theIndex�!  �   �# 0 currentfile currentFile� o    �� "0 allvisiblefiles allVisibleFiles� ��� l  , ,����  �  �  � ��� X   , H���� n  < C��� I   = C���� 0 createindex createIndex� ��� o   = >�� 0 currentfolder currentFolder� ��� o   > ?�� 0 theindex theIndex�  �  �  f   < =� 0 currentfolder currentFolder� o   / 0�� &0 allvisiblefolders allVisibleFolders� ��� L   I K�� o   I J�� 0 theindex theIndex� ��� l  L L����  �  �  �  j ��� l     ����  �  �  � ��� i    ��� I      ���
� (0 getallvisiblefiles getAllVisibleFiles� ��	� o      �� 0 thepath thePath�	  �
  � k     �� ��� O     ��� r    ��� 6   ��� n    ��� 1   
 �
� 
posx� n    
��� 2   
�
� 
file� 4    ��
� 
cfol� o    �� 0 thepath thePath� =   ��� 1    �
� 
pvis� m    �
� boovtrue� o      �� "0 allvisiblefiles allVisibleFiles� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � �� � L    �� o    ���� "0 allvisiblefiles allVisibleFiles�   � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� ,0 getallvisiblefolders getAllVisibleFolders� ���� o      ���� 0 thepath thePath��  ��  � k     �� ��� O     ��� r    ��� 6   ��� n    ��� 1   
 ��
�� 
posx� n    
��� 2   
��
�� 
cfol� 4    ���
�� 
cfol� o    ���� 0 thepath thePath� =   ��� 1    ��
�� 
pvis� m    ��
�� boovtrue� o      ���� &0 allvisiblefolders allVisibleFolders� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ���� L    �� o    ���� &0 allvisiblefolders allVisibleFolders��  � ��� l     ��������  ��  ��  � ��� l     ������  �   WRITE_FILE   � ���    W R I T E _ F I L E� ��� i    ��� I      ������� 0 
write_file  � ��� o      ���� "0 destinationpath destinationPath� ��� o      ���� 0 thelist theList� ���� o      ���� &0 shownotifications showNotifications��  ��  � k     ��� ��� r     
��� c     ��� 4     ���
�� 
psxf� l    ����  b     o    ���� "0 destinationpath destinationPath m     �  m d 5 . c s v��  ��  � m    ��
�� 
utxt� o      ���� 0 
outputfile 
outputFile� �� Q    � k    ]		 

 r     I   ��
�� .rdwropenshor       file 4    ��
�� 
file o    ���� 0 
outputfile 
outputFile ����
�� 
perm m    ��
�� boovtrue��   o      ���� 0 filereference fileReference  I   $��
�� .rdwrwritnull���     **** b     m     �  M D 5   H a s h ,   P a t h o    ��
�� 
ret  ����
�� 
refn o     ���� 0 filereference fileReference��    l  % %��������  ��  ��    X   % C��  I  5 >��!"
�� .rdwrwritnull���     ****! b   5 8#$# o   5 6���� 0 theitem theItem$ o   6 7��
�� 
ret " ��%��
�� 
refn% o   9 :���� 0 filereference fileReference��  �� 0 theitem theItem  o   ( )���� 0 thelist theList &'& l  D D��������  ��  ��  ' ()( I  D I��*��
�� .rdwrclosnull���     ***** o   D E���� 0 filereference fileReference��  ) +��+ Z  J ],-����, o   J K���� &0 shownotifications showNotifications- I  N Y��./
�� .sysonotfnull��� ��� TEXT. b   N Q010 m   N O22 �33 2 m d 5 . c s v   f i l e   c r e a t e d   i n :  1 o   O P���� "0 destinationpath destinationPath/ ��4��
�� 
appr4 m   R U55 �66  m d 5   S c r i p t��  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��   Q   e �78��7 k   h �99 :;: I  h p��<��
�� .rdwrclosnull���     ****< 4   h l��=
�� 
file= o   j k���� 0 
outputfile 
outputFile��  ; >��> Z  q �?@����? o   q r���� &0 shownotifications showNotifications@ I  u ���AB
�� .sysonotfnull��� ��� TEXTA b   u zCDC m   u xEE �FF 2 m d 5 . c s v   f i l e   c r e a t e d   i n :  D o   x y���� "0 destinationpath destinationPathB ��G��
�� 
apprG m   { ~HH �II  H e d g e   S c r i p t��  ��  ��  ��  8 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  � JKJ l     ��������  ��  ��  K LML l     ��NO��  N \ V RIGHT_STING - Return the text to the right of a delimiter (full string if not found).   O �PP �   R I G H T _ S T I N G   -   R e t u r n   t h e   t e x t   t o   t h e   r i g h t   o f   a   d e l i m i t e r   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .M QRQ i    STS I      ��U���� 0 rightstring rightStringU VWV o      ���� 0 str  W X��X o      ���� 0 del  ��  ��  T k     QYY Z[Z q      \\ ��]�� 0 str  ] ��^�� 0 del  ^ ������ 0 oldtids oldTIDs��  [ _`_ r     aba n    cdc 1    ��
�� 
txdld 1     ��
�� 
ascrb o      ���� 0 oldtids oldTIDs` e��e Q    Qfghf k   	 ;ii jkj r   	 lml c   	 non o   	 
���� 0 str  o m   
 ��
�� 
TEXTm o      ���� 0 str  k pqp Z   rs����r H    tt E    uvu o    ���� 0 str  v o    ���� 0 del  s L    ww o    ���� 0 str  ��  ��  q xyx r    "z{z o    ���� 0 del  { n     |}| 1    !��
�� 
txdl} 1    ��
�� 
ascry ~~ r   # 2��� c   # 0��� n  # .��� 7  $ .����
�� 
citm� m   ( *���� � m   + -������� o   # $���� 0 str  � m   . /��
�� 
TEXT� o      ���� 0 str   ��� r   3 8��� o   3 4���� 0 oldtids oldTIDs� n     ��� 1   5 7��
�� 
txdl� 1   4 5��
�� 
ascr� ���� L   9 ;�� o   9 :�� 0 str  ��  g R      �~��
�~ .ascrerr ****      � ****� o      �}�} 0 emsg eMsg� �|��{
�| 
errn� o      �z�z 0 enum eNum�{  h k   C Q�� ��� r   C H��� o   C D�y�y 0 oldtids oldTIDs� n     ��� 1   E G�x
�x 
txdl� 1   D E�w
�w 
ascr� ��v� R   I Q�u��
�u .ascrerr ****      � ****� b   M P��� m   M N�� ��� & C a n ' t   r i g h t S t r i n g :  � o   N O�t�t 0 emsg eMsg� �s��r
�s 
errn� o   K L�q�q 0 enum eNum�r  �v  ��  R ��� l     �p�o�n�p  �o  �n  � ��� l     �m���m  � \ V LEFT_STRING - Return the text to the left of a delimiter (full string if not found).    � ��� �   L E F T _ S T R I N G   -   R e t u r n   t h e   t e x t   t o   t h e   l e f t   o f   a   d e l i m i t e r   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .  � ��� i    ��� I      �l��k�l 0 
leftstring 
leftString� ��� o      �j�j 0 str  � ��i� o      �h�h 0 del  �i  �k  � k     H�� ��� q      �� �g��g 0 str  � �f��f 0 del  � �e�d�e 0 oldtids oldTIDs�d  � ��� r     ��� n    ��� 1    �c
�c 
txdl� 1     �b
�b 
ascr� o      �a�a 0 oldtids oldTIDs� ��`� Q    H���� k   	 2�� ��� r   	 ��� c   	 ��� o   	 
�_�_ 0 str  � m   
 �^
�^ 
TEXT� o      �]�] 0 str  � ��� Z   ���\�[� H    �� E    ��� o    �Z�Z 0 str  � o    �Y�Y 0 del  � L    �� o    �X�X 0 str  �\  �[  � ��� r    "��� o    �W�W 0 del  � n     ��� 1    !�V
�V 
txdl� 1    �U
�U 
ascr� ��� r   # )��� n  # '��� 4  $ '�T�
�T 
citm� m   % &�S�S � o   # $�R�R 0 str  � o      �Q�Q 0 str  � ��� r   * /��� o   * +�P�P 0 oldtids oldTIDs� n     ��� 1   , .�O
�O 
txdl� 1   + ,�N
�N 
ascr� ��M� L   0 2�� o   0 1�L�L 0 str  �M  � R      �K��
�K .ascrerr ****      � ****� o      �J�J 0 emsg eMsg� �I��H
�I 
errn� o      �G�G 0 enum eNum�H  � k   : H�� ��� r   : ?��� o   : ;�F�F 0 oldtids oldTIDs� n     ��� 1   < >�E
�E 
txdl� 1   ; <�D
�D 
ascr� ��C� R   @ H�B��
�B .ascrerr ****      � ****� b   D G��� m   D E�� ��� $ C a n ' t   l e f t S t r i n g :  � o   E F�A�A 0 emsg eMsg� �@��?
�@ 
errn� o   B C�>�> 0 enum eNum�?  �C  �`  � ��� l     �=�<�;�=  �<  �;  � ��:� i    ��� I      �9��8�9 $0 runningfromhedge runningFromHedge� ��7� o      �6�6 0 theevent theEvent�7  �8  � k     {�� � � l     �5�4�3�5  �4  �3    �2 Z     {�1 =     o     �0�0 0 theevent theEvent m     � " F i l e C o p y C o m p l e t e d Z    O	
�/	 G    E G    9 G    1 G    ) G    ! G     G     l 	  	�.�- l   	�,�+ =   	 m     � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } m       �!!  S u c c e s s�,  �+  �.  �-   l 	  "�*�)" l   #�(�'# =   $%$ m    && �'' 2 { F i l e C o p y C o m p l e t e d _ s t a t e }% m    (( �))  C a n c e l e d�(  �'  �*  �)   l 	  *�&�%* l   +�$�#+ =   ,-, m    .. �// 2 { F i l e C o p y C o m p l e t e d _ s t a t e }- m    00 �11  F a i l e d�$  �#  �&  �%   l 	  2�"�!2 l   3� �3 =   454 m    66 �77 2 { F i l e C o p y C o m p l e t e d _ s t a t e }5 m    88 �99  W a r n i n g s�   �  �"  �!   l 	 $ ':��: l  $ ';��; =  $ '<=< m   $ %>> �?? 2 { F i l e C o p y C o m p l e t e d _ s t a t e }= m   % &@@ �AA  W a i t i n g�  �  �  �   l 	 , /B��B l  , /C��C =  , /DED m   , -FF �GG 2 { F i l e C o p y C o m p l e t e d _ s t a t e }E m   - .HH �II  P r e p a r i n g�  �  �  �   l 	 4 7J��J l  4 7K��K =  4 7LML m   4 5NN �OO 2 { F i l e C o p y C o m p l e t e d _ s t a t e }M m   5 6PP �QQ  Q u e u e d�  �  �  �   l 	 < CR��R l  < CS��S =  < CTUT m   < ?VV �WW 2 { F i l e C o p y C o m p l e t e d _ s t a t e }U m   ? BXX �YY  S t o p p e d�  �  �  �  
 L   H JZZ m   H I�
� boovtrue�/   L   M O[[ m   M N�
� boovfals \]\ =  R W^_^ o   R S�� 0 theevent theEvent_ m   S V`` �aa  D i s k I d l e] b�b Z   Z wcd�
ec G   Z mfgf l  Z ah�	�h =  Z aiji m   Z ]kk �ll & { D i s k I d l e _ d i s k T y p e }j m   ] `mm �nn  D e s t i n a t i o n�	  �  g l  d ko��o =  d kpqp m   d grr �ss & { D i s k I d l e _ d i s k T y p e }q m   g jtt �uu  S o u r c e�  �  d L   p rvv m   p q�
� boovtrue�
  e L   u www m   u v�
� boovfals�  �1  �2  �:       
�xyz{|}~��  x ��� ����������� 0 createindex createIndex� (0 getallvisiblefiles getAllVisibleFiles�  ,0 getallvisiblefolders getAllVisibleFolders�� 0 
write_file  �� 0 rightstring rightString�� 0 
leftstring 
leftString�� $0 runningfromhedge runningFromHedge
�� .aevtoappnull  �   � ****y ��l���������� 0 createindex createIndex�� ����� �  ������ 0 thepath thePath�� 0 theindex theIndex��  � �������������� 0 thepath thePath�� 0 theindex theIndex�� &0 allvisiblefolders allVisibleFolders�� "0 allvisiblefiles allVisibleFiles�� 0 currentfile currentFile�� 0 currentfolder currentFolder� �������������� ,0 getallvisiblefolders getAllVisibleFolders�� (0 getallvisiblefiles getAllVisibleFiles
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 createindex createIndex�� N*�k+  E�O*�k+ E�O �[��l kh ��6G[OY��O �[��l kh )��l+ [OY��O�OPz ������������� (0 getallvisiblefiles getAllVisibleFiles�� ����� �  ���� 0 thepath thePath��  � ������ 0 thepath thePath�� "0 allvisiblefiles allVisibleFiles� ����������
�� 
cfol
�� 
file
�� 
posx�  
�� 
pvis�� � *�/�-�,�[�,\Ze81E�UO�{ ������������� ,0 getallvisiblefolders getAllVisibleFolders�� ����� �  ���� 0 thepath thePath��  � ������ 0 thepath thePath�� &0 allvisiblefolders allVisibleFolders� ��������
�� 
cfol
�� 
posx
�� 
pvis�� � *�/�-�,�[�,\Ze81E�UO�| ������������� 0 
write_file  �� ����� �  �������� "0 destinationpath destinationPath�� 0 thelist theList�� &0 shownotifications showNotifications��  � �������������� "0 destinationpath destinationPath�� 0 thelist theList�� &0 shownotifications showNotifications�� 0 
outputfile 
outputFile�� 0 filereference fileReference�� 0 theitem theItem� ������������������������2��5������EH
�� 
psxf
�� 
utxt
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
ret 
�� 
refn
�� .rdwrwritnull���     ****
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .rdwrclosnull���     ****
�� 
appr
�� .sysonotfnull��� ��� TEXT��  ��  �� �*��%/�&E�O T*�/�el E�O��%�l 	O �[��l kh ��%�l 	[OY��O�j O� �%�a l Y hW 1X   #*�/j O� a �%�a l Y hW X  h} ��T���������� 0 rightstring rightString�� ����� �  ������ 0 str  �� 0 del  ��  � ������������ 0 str  �� 0 del  �� 0 oldtids oldTIDs�� 0 emsg eMsg�� 0 enum eNum� ��������������
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
citm�� 0 emsg eMsg� ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� R��,E�O 7��&E�O�� �Y hO���,FO�[�\[Zl\Zi2�&E�O���,FO�W X  ���,FO)�l�%~ ������������� 0 
leftstring 
leftString�� ����� �  ������ 0 str  �� 0 del  ��  � ������������ 0 str  �� 0 del  �� 0 oldtids oldTIDs�� 0 emsg eMsg�� 0 enum eNum� ��������������
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
citm�� 0 emsg eMsg� ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� I��,E�O .��&E�O�� �Y hO���,FO��k/E�O���,FO�W X  ���,FO)�l�% ������������� $0 runningfromhedge runningFromHedge�� ����� �  ���� 0 theevent theEvent��  � ���� 0 theevent theEvent�  &(��.068>@FHNPVX`kmrt
�� 
bool�� |��  N�� 
 �� �&
 �� �&
 �� �&
 �� �&
 �� �&
 �� �&
 a a  �& eY fY +�a   "a a  
 a a  �& eY fY h� �����~���}
�� .aevtoappnull  �   � ****� k    :��  Z��  o��  t��  ~��  ��|�|  �  �~  � �{�z�{ 0 currentfile currentFile�z 0 errmsg errMsg� 4 _�y�x�w ��v ��u ��t�s ��r � � ��q ��p�o�n ��m�l ��k ��j�i�h�g�f�e�d�c�b�a�`�_#�^/�]�\9�[�Z�Y�X�y 0 	separator  �x &0 shownotifications showNotifications�w $0 showconfirmation showConfirmation�v $0 runningfromhedge runningFromHedge�u F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath
�t .sysodlogaskr        TEXT�s &0 runningstandalone runningStandAlone�r 20 filecopycompleted_state fileCopyCompleted_state
�q 
prmp
�p .sysostflalis    ��� null
�o 
psxp
�n 
utxt�m �l <
�k 
appr
�j .sysonotfnull��� ��� TEXT�i 0 theindex theIndex�h 0 createindex createIndex�g 0 md5list md5List
�f 
kocl
�e 
cobj
�d .corecnte****       ****
�c 
strq
�b .sysoexecTEXT���     TEXT�a 0 	md5result 	md5Result�` 0 errmsg errMsg�_  
�^ .sysodisAaleR        TEXT�] 0 
leftstring 
leftString�\ 0 md5  �[ 0 rightstring rightString�Z 0 thepath thePath�Y 0 lineitem lineItem�X 0 
write_file  �};�E�OeE�OeE�O*�k+  &� ��%�%j 	Y hOfE�O�E�O��%E�OPY eE�O�E�O*a a l a ,a &E�O�a   �a a  a  n� a a a l Y hOjvE` O*�_ l+ E` OjvE` O� a a a  l Y hO v_ [a !a "l #kh   a $�a %,%j &E` 'W X ( )a *�%j +O*_ 'a ,l+ -E` .O*_ 'a /l+ 0E` 1O_ .�%_ 1%E` 2O_ 2_ 6G[OY��O*�_ �m+ 3oY h ascr  ��ޭ