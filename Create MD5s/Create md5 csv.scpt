FasdUAS 1.101.10   ��   ��    k             l     ��  ��      THIS IS A HEDGE SCRIPT     � 	 	 .   T H I S   I S   A   H E D G E   S C R I P T   
  
 l     ��  ��    * $ Copyright (c) 2019 The Sync Factory     �   H   C o p y r i g h t   ( c )   2 0 1 9   T h e   S y n c   F a c t o r y      l     ��  ��      License: MIT License     �   *   L i c e n s e :   M I T   L i c e n s e      l     ��  ��    ? 9 Repository: https://github.com/HedgeForMac/hedge-scripts     �   r   R e p o s i t o r y :   h t t p s : / / g i t h u b . c o m / H e d g e F o r M a c / h e d g e - s c r i p t s      l     ��������  ��  ��        l     ��  ��    6 0 You can do whatever you like with this script.      �   `   Y o u   c a n   d o   w h a t e v e r   y o u   l i k e   w i t h   t h i s   s c r i p t .       !   l     �� " #��   " d ^ If you add something useful, please fork this repo or send it to us at hello@hedgeformac.com.    # � $ $ �   I f   y o u   a d d   s o m e t h i n g   u s e f u l ,   p l e a s e   f o r k   t h i s   r e p o   o r   s e n d   i t   t o   u s   a t   h e l l o @ h e d g e f o r m a c . c o m . !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   )   DISCLAIMER    * � + +    D I S C L A I M E R (  , - , l     �� . /��   . g a Scripting is a very powerful feature, depending on the script it can be potentially destructive.    / � 0 0 �   S c r i p t i n g   i s   a   v e r y   p o w e r f u l   f e a t u r e ,   d e p e n d i n g   o n   t h e   s c r i p t   i t   c a n   b e   p o t e n t i a l l y   d e s t r u c t i v e . -  1 2 1 l     �� 3 4��   3 G A Do not use it unless you really know what you can and can't do.     4 � 5 5 �   D o   n o t   u s e   i t   u n l e s s   y o u   r e a l l y   k n o w   w h a t   y o u   c a n   a n d   c a n ' t   d o .   2  6 7 6 l     �� 8 9��   8 p j The Sync Factory doesn't offer support or assume responsibility for problems with or due to your scripts.    9 � : : �   T h e   S y n c   F a c t o r y   d o e s n ' t   o f f e r   s u p p o r t   o r   a s s u m e   r e s p o n s i b i l i t y   f o r   p r o b l e m s   w i t h   o r   d u e   t o   y o u r   s c r i p t s . 7  ; < ; l     ��������  ��  ��   <  = > = l     �� ? @��   ?  	 README:     @ � A A    R E A D M E :   >  B C B l     �� D E��   D P J This script creates a CSV file, with two columns: md5 checksum & filepath    E � F F �   T h i s   s c r i p t   c r e a t e s   a   C S V   f i l e ,   w i t h   t w o   c o l u m n s :   m d 5   c h e c k s u m   &   f i l e p a t h C  G H G l     �� I J��   I I C Can be used standalone or with Hedge's 'File Copy Completed' event    J � K K �   C a n   b e   u s e d   s t a n d a l o n e   o r   w i t h   H e d g e ' s   ' F i l e   C o p y   C o m p l e t e d '   e v e n t H  L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P  	 SETTINGS    Q � R R    S E T T I N G S O  S T S l     U V W U r      X Y X m      Z Z � [ [  , Y o      ���� 0 	separator   V ) # sets the separator used in the CSV    W � \ \ F   s e t s   t h e   s e p a r a t o r   u s e d   i n   t h e   C S V T  ] ^ ] l    _ ` a _ r     b c b m    ��
�� boovtrue c o      ���� <0 showstartconfirmationinhedge showStartConfirmationInHedge ` H B when running from Hedge show a confirmation popup before starting    a � d d �   w h e n   r u n n i n g   f r o m   H e d g e   s h o w   a   c o n f i r m a t i o n   p o p u p   b e f o r e   s t a r t i n g ^  e f e l    g h i g r     j k j m    	��
�� boovtrue k o      ���� 60 showprogressnotifications showProgressNotifications h @ : set to false if you don't want any progress notifications    i � l l t   s e t   t o   f a l s e   i f   y o u   d o n ' t   w a n t   a n y   p r o g r e s s   n o t i f i c a t i o n s f  m n m l     ��������  ��  ��   n  o p o l   V q���� q Z    V r s�� t r I    �� u���� $0 runningfromhedge runningFromHedge u  v�� v m     w w � x x " F i l e C o p y C o m p l e t e d��  ��   s k    6 y y  z { z Z    & | }���� | o    ���� <0 showstartconfirmationinhedge showStartConfirmationInHedge } I   "�� ~��
�� .sysodlogaskr        TEXT ~ b      �  b     � � � m     � � � � � N C r e a t e   M D 5   C h e c k s u m s   f o r   t h e   f i l e s   i n   ' � o    ���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath � m     � � � � �  ' ?��  ��  ��   {  � � � l  ' '�� � ���   �   Running from Hedge    � � � � &   R u n n i n g   f r o m   H e d g e �  � � � r   ' * � � � m   ' (��
�� boovfals � o      ���� &0 runningstandalone runningStandAlone �  � � � r   + . � � � m   + , � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � o      ���� 20 filecopycompleted_state fileCopyCompleted_state �  � � � r   / 4 � � � b   / 2 � � � m   / 0 � � � � � F { F i l e C o p y C o m p l e t e d _ d e s t i n a t i o n P a t h } � m   0 1 � � � � �  / � o      ���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath �  ��� � l  5 5��������  ��  ��  ��  ��   t k   9 V � �  � � � l  9 9�� � ���   �   Running standalone    � � � � &   R u n n i n g   s t a n d a l o n e �  � � � r   9 < � � � m   9 :��
�� boovtrue � o      ���� &0 runningstandalone runningStandAlone �  � � � r   = @ � � � m   = > � � � � �  S u c c e s s � o      ���� 20 filecopycompleted_state fileCopyCompleted_state �  ��� � r   A V � � � c   A T � � � n   A P � � � 1   L P��
�� 
psxp � l  A L ����� � I  A L���� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m   E H � � � � � , P l e a s e   c h o o s e   a   f o l d e r��  ��  ��   � m   P S��
�� 
utxt � o      ���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath��  ��  ��   p  � � � l     ��������  ��  ��   �  � � � l  W: ����� � Z   W: � ����� � =  W \ � � � o   W X���� 20 filecopycompleted_state fileCopyCompleted_state � m   X [ � � � � �  S u c c e s s � t   _6 � � � k   k5 � �  � � � Z  k � � ����� � o   k l���� 60 showprogressnotifications showProgressNotifications � I  o |�� � �
�� .sysonotfnull��� ��� TEXT � m   o r � � � � � * G e t t i n g   f i l e   l i s t . . .   � �� ���
�� 
appr � m   u x � � � � �  H e d g e   S c r i p t��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   get file list    � � � �    g e t   f i l e   l i s t �  � � � r   � � � � � J   � �����   � o      ���� 0 theindex theIndex �  � � � r   � � � � � I   � ��� ����� 0 createindex createIndex �  � � � o   � ����� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath �  ��� � o   � ����� 0 theindex theIndex��  ��   � o      ���� 0 theindex theIndex �  � � � r   � � � � � J   � �����   � o      ���� 0 md5list md5List �  � � � l  � ���������  ��  ��   �  � � � Z  � � � ����� � o   � ����� 60 showprogressnotifications showProgressNotifications � I  � ��� � �
�� .sysonotfnull��� ��� TEXT � m   � � � � � � � : C a l c u l a t i n g   M D 5   c h e c k s u m s . . .   � �� ���
�� 
appr � m   � � � � � � �  H e d g e   S c r i p t��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � X   �* ��� � � k   �%    Q   � � r   � � I  � �����
�� .sysoexecTEXT���     TEXT b   � �	
	 m   � � �  m d 5   - r  
 l  � ����� n   � � 1   � ���
�� 
strq o   � ����� 0 currentfile currentFile��  ��  ��   o      ���� 0 	md5result 	md5Result R      ����
�� .ascrerr ****      � **** o      ���� 0 errmsg errMsg��   I  � �����
�� .sysodisAaleR        TEXT b   � � m   � � �  W a r n i n g :   o   � ����� 0 errmsg errMsg��    l  � ���������  ��  ��    r   � � I   � ������ 0 
leftstring 
leftString  o   � ��~�~ 0 	md5result 	md5Result �} m   � �   �!!   �}  �   o      �|�| 0 md5   "#" r   �$%$ I   �
�{&�z�{ 0 rightstring rightString& '(' o   �y�y 0 	md5result 	md5Result( )�x) m  ** �++   �x  �z  % o      �w�w 0 thepath thePath# ,-, r  ./. b  010 b  232 o  �v�v 0 md5  3 o  �u�u 0 	separator  1 o  �t�t 0 thepath thePath/ l     4�s�r4 o      �q�q 0 lineitem lineItem�s  �r  - 565 l �p�o�n�p  �o  �n  6 7�m7 s  %898 o   �l�l 0 lineitem lineItem9 n      :;:  ;  #$; o   #�k�k 0 md5list md5List�m  �� 0 currentfile currentFile � o   � ��j�j 0 theindex theIndex � <=< l ++�i�h�g�i  �h  �g  = >�f> I  +5�e?�d�e 0 
write_file  ? @A@ o  ,-�c�c F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPathA BCB o  -0�b�b 0 md5list md5ListC D�aD o  01�`�` 60 showprogressnotifications showProgressNotifications�a  �d  �f   � l  _ jE�_�^E ]   _ jFGF ]   _ fHIH m   _ b�]�] I m   b e�\�\ <G m   f i�[�[ <�_  �^  ��  ��  ��  ��   � JKJ l     �Z�Y�X�Z  �Y  �X  K LML l     �W�V�U�W  �V  �U  M NON l     �TPQ�T  P   SUB-ROUTINES   Q �RR    S U B - R O U T I N E SO STS l     �S�R�Q�S  �R  �Q  T UVU l     �PWX�P  W 6 0 CREATEINDEX - returns list of all items in path   X �YY `   C R E A T E I N D E X   -   r e t u r n s   l i s t   o f   a l l   i t e m s   i n   p a t hV Z[Z i     \]\ I      �O^�N�O 0 createindex createIndex^ _`_ o      �M�M 0 thepath thePath` a�La o      �K�K 0 theindex theIndex�L  �N  ] k     Mbb cdc l     �J�I�H�J  �I  �H  d efe l     �Ggh�G  g   use like this:   h �ii    u s e   l i k e   t h i s :f jkj l     �Flm�F  l l f - set FolderPathToScan to POSIX path of (choose folder with prompt "Please select a folder to index")   m �nn �   -   s e t   F o l d e r P a t h T o S c a n   t o   P O S I X   p a t h   o f   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " P l e a s e   s e l e c t   a   f o l d e r   t o   i n d e x " )k opo l     �Eqr�E  q   - set theIndex to {}   r �ss *   -   s e t   t h e I n d e x   t o   { }p tut l     �Dvw�D  v @ : - set theIndex to createIndex(FolderPathToScan, theIndex)   w �xx t   -   s e t   t h e I n d e x   t o   c r e a t e I n d e x ( F o l d e r P a t h T o S c a n ,   t h e I n d e x )u yzy l     �C�B�A�C  �B  �A  z {|{ r     }~} I     �@�?�@ ,0 getallvisiblefolders getAllVisibleFolders ��>� o    �=�= 0 thepath thePath�>  �?  ~ o      �<�< &0 allvisiblefolders allVisibleFolders| ��� r   	 ��� I   	 �;��:�; (0 getallvisiblefiles getAllVisibleFiles� ��9� o   
 �8�8 0 thepath thePath�9  �:  � o      �7�7 "0 allvisiblefiles allVisibleFiles� ��� l   �6�5�4�6  �5  �4  � ��� X    +��3�� s   " &��� o   " #�2�2 0 currentfile currentFile� l     ��1�0� n      ���  ;   $ %� o   # $�/�/ 0 theindex theIndex�1  �0  �3 0 currentfile currentFile� o    �.�. "0 allvisiblefiles allVisibleFiles� ��� l  , ,�-�,�+�-  �,  �+  � ��� X   , H��*�� n  < C��� I   = C�)��(�) 0 createindex createIndex� ��� o   = >�'�' 0 currentfolder currentFolder� ��&� o   > ?�%�% 0 theindex theIndex�&  �(  �  f   < =�* 0 currentfolder currentFolder� o   / 0�$�$ &0 allvisiblefolders allVisibleFolders� ��� L   I K�� o   I J�#�# 0 theindex theIndex� ��"� l  L L�!� ��!  �   �  �"  [ ��� l     ����  �  �  � ��� i    ��� I      ���� (0 getallvisiblefiles getAllVisibleFiles� ��� o      �� 0 thepath thePath�  �  � k     �� ��� O     ��� r    ��� 6   ��� n    ��� 1   
 �
� 
posx� n    
��� 2   
�
� 
file� 4    ��
� 
cfol� o    �� 0 thepath thePath� =   ��� 1    �
� 
pvis� m    �
� boovtrue� o      �� "0 allvisiblefiles allVisibleFiles� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� L    �� o    �� "0 allvisiblefiles allVisibleFiles�  � ��� l     ����  �  �  � ��� i    ��� I      ���
� ,0 getallvisiblefolders getAllVisibleFolders� ��	� o      �� 0 thepath thePath�	  �
  � k     �� ��� O     ��� r    ��� 6   ��� n    ��� 1   
 �
� 
posx� n    
��� 2   
�
� 
cfol� 4    ��
� 
cfol� o    �� 0 thepath thePath� =   ��� 1    �
� 
pvis� m    �
� boovtrue� o      �� &0 allvisiblefolders allVisibleFolders� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � �� � L    �� o    ���� &0 allvisiblefolders allVisibleFolders�   � ��� l     ��������  ��  ��  � ��� l     ������  �   WRITE_FILE   � ���    W R I T E _ F I L E� ��� i    ��� I      ������� 0 
write_file  � ��� o      ���� "0 destinationpath destinationPath� ��� o      ���� 0 thelist theList� ���� o      ���� 60 showprogressnotifications showProgressNotifications��  ��  � k     ��� ��� r     
��� c     ��� 4     ���
�� 
psxf� l   ������ b    ��� o    ���� "0 destinationpath destinationPath� m    �� ���  m d 5 . c s v��  ��  � m    ��
�� 
utxt� o      ���� 0 
outputfile 
outputFile� ���� Q    ����� k    ]�� ��� r    ��� I   ��� 
�� .rdwropenshor       file� 4    ��
�� 
file o    ���� 0 
outputfile 
outputFile  ����
�� 
perm m    ��
�� boovtrue��  � o      ���� 0 filereference fileReference�  I   $��
�� .rdwrwritnull���     **** b     m    		 �

  M D 5   H a s h ,   P a t h o    ��
�� 
ret  ����
�� 
refn o     ���� 0 filereference fileReference��    l  % %��������  ��  ��    X   % C�� I  5 >��
�� .rdwrwritnull���     **** b   5 8 o   5 6���� 0 theitem theItem o   6 7��
�� 
ret  ����
�� 
refn o   9 :���� 0 filereference fileReference��  �� 0 theitem theItem o   ( )���� 0 thelist theList  l  D D��������  ��  ��    I  D I����
�� .rdwrclosnull���     **** o   D E���� 0 filereference fileReference��   �� Z  J ]���� o   J K���� 60 showprogressnotifications showProgressNotifications I  N Y�� 
�� .sysonotfnull��� ��� TEXT b   N Q!"! m   N O## �$$ 2 m d 5 . c s v   f i l e   c r e a t e d   i n :  " o   O P���� "0 destinationpath destinationPath  ��%��
�� 
appr% m   R U&& �''  m d 5   S c r i p t��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � Q   e �()��( k   h �** +,+ I  h p��-��
�� .rdwrclosnull���     ****- 4   h l��.
�� 
file. o   j k���� 0 
outputfile 
outputFile��  , /��/ Z  q �01����0 o   q r���� 60 showprogressnotifications showProgressNotifications1 I  u ���23
�� .sysonotfnull��� ��� TEXT2 b   u z454 m   u x66 �77 2 m d 5 . c s v   f i l e   c r e a t e d   i n :  5 o   x y���� "0 destinationpath destinationPath3 ��8��
�� 
appr8 m   { ~99 �::  H e d g e   S c r i p t��  ��  ��  ��  ) R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  � ;<; l     ��������  ��  ��  < =>= l     ��?@��  ? \ V RIGHT_STING - Return the text to the right of a delimiter (full string if not found).   @ �AA �   R I G H T _ S T I N G   -   R e t u r n   t h e   t e x t   t o   t h e   r i g h t   o f   a   d e l i m i t e r   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .> BCB i    DED I      ��F���� 0 rightstring rightStringF GHG o      ���� 0 str  H I��I o      ���� 0 del  ��  ��  E k     QJJ KLK q      MM ��N�� 0 str  N ��O�� 0 del  O ������ 0 oldtids oldTIDs��  L PQP r     RSR n    TUT 1    ��
�� 
txdlU 1     ��
�� 
ascrS o      ���� 0 oldtids oldTIDsQ V��V Q    QWXYW k   	 ;ZZ [\[ r   	 ]^] c   	 _`_ o   	 
���� 0 str  ` m   
 ��
�� 
TEXT^ o      ���� 0 str  \ aba Z   cd����c H    ee E    fgf o    ���� 0 str  g o    ���� 0 del  d L    hh o    ���� 0 str  ��  ��  b iji r    "klk o    ���� 0 del  l n     mnm 1    !��
�� 
txdln 1    ��
�� 
ascrj opo r   # 2qrq c   # 0sts n  # .uvu 7  $ .��wx
�� 
citmw m   ( *���� x m   + -������v o   # $���� 0 str  t m   . /��
�� 
TEXTr o      ���� 0 str  p yzy r   3 8{|{ o   3 4���� 0 oldtids oldTIDs| n     }~} 1   5 7��
�� 
txdl~ 1   4 5��
�� 
ascrz �� L   9 ;�� o   9 :���� 0 str  ��  X R      ����
�� .ascrerr ****      � ****� o      ���� 0 emsg eMsg� �����
�� 
errn� o      ���� 0 enum eNum��  Y k   C Q�� ��� r   C H��� o   C D���� 0 oldtids oldTIDs� n     ��� 1   E G��
�� 
txdl� 1   D E��
�� 
ascr� ���� R   I Q����
�� .ascrerr ****      � ****� b   M P��� m   M N�� ��� & C a n ' t   r i g h t S t r i n g :  � o   N O���� 0 emsg eMsg� �����
�� 
errn� o   K L���� 0 enum eNum��  ��  ��  C ��� l     ����~��  �  �~  � ��� l     �}���}  � \ V LEFT_STRING - Return the text to the left of a delimiter (full string if not found).    � ��� �   L E F T _ S T R I N G   -   R e t u r n   t h e   t e x t   t o   t h e   l e f t   o f   a   d e l i m i t e r   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .  � ��� i    ��� I      �|��{�| 0 
leftstring 
leftString� ��� o      �z�z 0 str  � ��y� o      �x�x 0 del  �y  �{  � k     H�� ��� q      �� �w��w 0 str  � �v��v 0 del  � �u�t�u 0 oldtids oldTIDs�t  � ��� r     ��� n    ��� 1    �s
�s 
txdl� 1     �r
�r 
ascr� o      �q�q 0 oldtids oldTIDs� ��p� Q    H���� k   	 2�� ��� r   	 ��� c   	 ��� o   	 
�o�o 0 str  � m   
 �n
�n 
TEXT� o      �m�m 0 str  � ��� Z   ���l�k� H    �� E    ��� o    �j�j 0 str  � o    �i�i 0 del  � L    �� o    �h�h 0 str  �l  �k  � ��� r    "��� o    �g�g 0 del  � n     ��� 1    !�f
�f 
txdl� 1    �e
�e 
ascr� ��� r   # )��� n  # '��� 4  $ '�d�
�d 
citm� m   % &�c�c � o   # $�b�b 0 str  � o      �a�a 0 str  � ��� r   * /��� o   * +�`�` 0 oldtids oldTIDs� n     ��� 1   , .�_
�_ 
txdl� 1   + ,�^
�^ 
ascr� ��]� L   0 2�� o   0 1�\�\ 0 str  �]  � R      �[��
�[ .ascrerr ****      � ****� o      �Z�Z 0 emsg eMsg� �Y��X
�Y 
errn� o      �W�W 0 enum eNum�X  � k   : H�� ��� r   : ?��� o   : ;�V�V 0 oldtids oldTIDs� n     ��� 1   < >�U
�U 
txdl� 1   ; <�T
�T 
ascr� ��S� R   @ H�R��
�R .ascrerr ****      � ****� b   D G��� m   D E�� ��� $ C a n ' t   l e f t S t r i n g :  � o   E F�Q�Q 0 emsg eMsg� �P��O
�P 
errn� o   B C�N�N 0 enum eNum�O  �S  �p  � ��� l     �M�L�K�M  �L  �K  � ��J� i    ��� I      �I��H�I $0 runningfromhedge runningFromHedge� ��G� o      �F�F 0 theevent theEvent�G  �H  � k     {�� ��� l     �E�D�C�E  �D  �C  � ��B� Z     {����A� =    ��� o     �@�@ 0 theevent theEvent� m    �� ��� " F i l e C o p y C o m p l e t e d� Z    O���?�� G    E��� G    9� � G    1 G    ) G    ! G     G    	
	 l 	  	�>�= l   	�<�; =   	 m     � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } m     �  S u c c e s s�<  �;  �>  �=  
 l 	  �:�9 l   �8�7 =    m     � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } m     �  C a n c e l e d�8  �7  �:  �9   l 	  �6�5 l   �4�3 =    m     �   2 { F i l e C o p y C o m p l e t e d _ s t a t e } m    !! �""  F a i l e d�4  �3  �6  �5   l 	  #�2�1# l   $�0�/$ =   %&% m    '' �(( 2 { F i l e C o p y C o m p l e t e d _ s t a t e }& m    )) �**  W a r n i n g s�0  �/  �2  �1   l 	 $ '+�.�-+ l  $ ',�,�+, =  $ '-.- m   $ %// �00 2 { F i l e C o p y C o m p l e t e d _ s t a t e }. m   % &11 �22  W a i t i n g�,  �+  �.  �-   l 	 , /3�*�)3 l  , /4�(�'4 =  , /565 m   , -77 �88 2 { F i l e C o p y C o m p l e t e d _ s t a t e }6 m   - .99 �::  P r e p a r i n g�(  �'  �*  �)    l 	 4 7;�&�%; l  4 7<�$�#< =  4 7=>= m   4 5?? �@@ 2 { F i l e C o p y C o m p l e t e d _ s t a t e }> m   5 6AA �BB  Q u e u e d�$  �#  �&  �%  � l 	 < CC�"�!C l  < CD� �D =  < CEFE m   < ?GG �HH 2 { F i l e C o p y C o m p l e t e d _ s t a t e }F m   ? BII �JJ  S t o p p e d�   �  �"  �!  � L   H JKK m   H I�
� boovtrue�?  � L   M OLL m   M N�
� boovfals� MNM =  R WOPO o   R S�� 0 theevent theEventP m   S VQQ �RR  D i s k I d l eN S�S Z   Z wTU�VT G   Z mWXW l  Z aY��Y =  Z aZ[Z m   Z ]\\ �]] & { D i s k I d l e _ d i s k T y p e }[ m   ] `^^ �__  D e s t i n a t i o n�  �  X l  d k`��` =  d kaba m   d gcc �dd & { D i s k I d l e _ d i s k T y p e }b m   g jee �ff  S o u r c e�  �  U L   p rgg m   p q�
� boovtrue�  V L   u whh m   u v�
� boovfals�  �A  �B  �J       
�ijklmnopq�  i ��������� 0 createindex createIndex� (0 getallvisiblefiles getAllVisibleFiles� ,0 getallvisiblefolders getAllVisibleFolders� 0 
write_file  � 0 rightstring rightString� 0 
leftstring 
leftString� $0 runningfromhedge runningFromHedge
� .aevtoappnull  �   � ****j �
]�	�rs��
 0 createindex createIndex�	 �t� t  ��� 0 thepath thePath� 0 theindex theIndex�  r ���� ����� 0 thepath thePath� 0 theindex theIndex� &0 allvisiblefolders allVisibleFolders�  "0 allvisiblefiles allVisibleFiles�� 0 currentfile currentFile�� 0 currentfolder currentFolders �������������� ,0 getallvisiblefolders getAllVisibleFolders�� (0 getallvisiblefiles getAllVisibleFiles
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 createindex createIndex� N*�k+  E�O*�k+ E�O �[��l kh ��6G[OY��O �[��l kh )��l+ [OY��O�OPk �������uv���� (0 getallvisiblefiles getAllVisibleFiles�� ��w�� w  ���� 0 thepath thePath��  u ������ 0 thepath thePath�� "0 allvisiblefiles allVisibleFilesv �������x��
�� 
cfol
�� 
file
�� 
posxx  
�� 
pvis�� � *�/�-�,�[�,\Ze81E�UO�l �������yz���� ,0 getallvisiblefolders getAllVisibleFolders�� ��{�� {  ���� 0 thepath thePath��  y ������ 0 thepath thePath�� &0 allvisiblefolders allVisibleFoldersz �����x��
�� 
cfol
�� 
posx
�� 
pvis�� � *�/�-�,�[�,\Ze81E�UO�m �������|}���� 0 
write_file  �� ��~�� ~  �������� "0 destinationpath destinationPath�� 0 thelist theList�� 60 showprogressnotifications showProgressNotifications��  | �������������� "0 destinationpath destinationPath�� 0 thelist theList�� 60 showprogressnotifications showProgressNotifications�� 0 
outputfile 
outputFile�� 0 filereference fileReference�� 0 theitem theItem} �����������	��������������#��&������69
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
�� .sysonotfnull��� ��� TEXT��  ��  �� �*��%/�&E�O T*�/�el E�O��%�l 	O �[��l kh ��%�l 	[OY��O�j O� �%�a l Y hW 1X   #*�/j O� a �%�a l Y hW X  hn ��E��������� 0 rightstring rightString�� ����� �  ������ 0 str  �� 0 del  ��   ������������ 0 str  �� 0 del  �� 0 oldtids oldTIDs�� 0 emsg eMsg�� 0 enum eNum� ��������������
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
errn�� R��,E�O 7��&E�O�� �Y hO���,FO�[�\[Zl\Zi2�&E�O���,FO�W X  ���,FO)�l�%o ������������� 0 
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
errn�� I��,E�O .��&E�O�� �Y hO���,FO��k/E�O���,FO�W X  ���,FO)�l�%p ������������� $0 runningfromhedge runningFromHedge�� ����� �  ���� 0 theevent theEvent��  � ���� 0 theevent theEvent� ���!')/179?AGIQ\^ce
�� 
bool�� |��  N�� 
 �� �&
 �� �&
 �� �&
 �� �&
 �� �&
 �� �&
 a a  �& eY fY +�a   "a a  
 a a  �& eY fY hq �����������
�� .aevtoappnull  �   � ****� k    :��  S��  ]��  e��  o��  �����  ��  ��  � ������ 0 currentfile currentFile�� 0 errmsg errMsg� 4 Z������ w�� ��� ����� ��� � � ��� �����~ ��}�| ��{ ��z�y�x�w � ��v�u�t�s�r�q�p�o�n �m�l*�k�j�i�h�� 0 	separator  �� <0 showstartconfirmationinhedge showStartConfirmationInHedge�� 60 showprogressnotifications showProgressNotifications�� $0 runningfromhedge runningFromHedge�� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath
�� .sysodlogaskr        TEXT�� &0 runningstandalone runningStandAlone�� 20 filecopycompleted_state fileCopyCompleted_state
�� 
prmp
�� .sysostflalis    ��� null
� 
psxp
�~ 
utxt�} �| <
�{ 
appr
�z .sysonotfnull��� ��� TEXT�y 0 theindex theIndex�x 0 createindex createIndex�w 0 md5list md5List
�v 
kocl
�u 
cobj
�t .corecnte****       ****
�s 
strq
�r .sysoexecTEXT���     TEXT�q 0 	md5result 	md5Result�p 0 errmsg errMsg�o  
�n .sysodisAaleR        TEXT�m 0 
leftstring 
leftString�l 0 md5  �k 0 rightstring rightString�j 0 thepath thePath�i 0 lineitem lineItem�h 0 
write_file  ��;�E�OeE�OeE�O*�k+  &� ��%�%j 	Y hOfE�O�E�O��%E�OPY eE�O�E�O*a a l a ,a &E�O�a   �a a  a  n� a a a l Y hOjvE` O*�_ l+ E` OjvE` O� a a a  l Y hO v_ [a !a "l #kh   a $�a %,%j &E` 'W X ( )a *�%j +O*_ 'a ,l+ -E` .O*_ 'a /l+ 0E` 1O_ .�%_ 1%E` 2O_ 2_ 6G[OY��O*�_ �m+ 3oY hascr  ��ޭ