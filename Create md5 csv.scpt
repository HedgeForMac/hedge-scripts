FasdUAS 1.101.10   ��   ��    k             l     ��  ��      THIS IS A HEDGE SCRIPT     � 	 	 .   T H I S   I S   A   H E D G E   S C R I P T   
  
 l     ��  ��    * $ Copyright (c) 2018 The Sync Factory     �   H   C o p y r i g h t   ( c )   2 0 1 8   T h e   S y n c   F a c t o r y      l     ��  ��      License: MIT License     �   *   L i c e n s e :   M I T   L i c e n s e      l     ��  ��    ? 9 Repository: https://github.com/HedgeForMac/hedge-scripts     �   r   R e p o s i t o r y :   h t t p s : / / g i t h u b . c o m / H e d g e F o r M a c / h e d g e - s c r i p t s      l     ��  ��    6 0 You can do whatever you like with this script.      �   `   Y o u   c a n   d o   w h a t e v e r   y o u   l i k e   w i t h   t h i s   s c r i p t .        l     ��   !��     d ^ If you add something useful, please fork this repo or send it to us at hello@hedgeformac.com.    ! � " " �   I f   y o u   a d d   s o m e t h i n g   u s e f u l ,   p l e a s e   f o r k   t h i s   r e p o   o r   s e n d   i t   t o   u s   a t   h e l l o @ h e d g e f o r m a c . c o m .   # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   '   DISCLAIMER    ( � ) )    D I S C L A I M E R &  * + * l     �� , -��   , g a Scripting is a very powerful feature, depending on the script it can be potentially destructive.    - � . . �   S c r i p t i n g   i s   a   v e r y   p o w e r f u l   f e a t u r e ,   d e p e n d i n g   o n   t h e   s c r i p t   i t   c a n   b e   p o t e n t i a l l y   d e s t r u c t i v e . +  / 0 / l     �� 1 2��   1 G A Do not use it unless you really know what you can and can't do.     2 � 3 3 �   D o   n o t   u s e   i t   u n l e s s   y o u   r e a l l y   k n o w   w h a t   y o u   c a n   a n d   c a n ' t   d o .   0  4 5 4 l     �� 6 7��   6 p j The Sync Factory doesn't offer support or assume responsibility for problems with or due to your scripts.    7 � 8 8 �   T h e   S y n c   F a c t o r y   d o e s n ' t   o f f e r   s u p p o r t   o r   a s s u m e   r e s p o n s i b i l i t y   f o r   p r o b l e m s   w i t h   o r   d u e   t o   y o u r   s c r i p t s . 5  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   =  	 README:     > � ? ?    R E A D M E :   <  @ A @ l     �� B C��   B P J This script creates a CSV file, with two columns: md5 checksum & filepath    C � D D �   T h i s   s c r i p t   c r e a t e s   a   C S V   f i l e ,   w i t h   t w o   c o l u m n s :   m d 5   c h e c k s u m   &   f i l e p a t h A  E F E l     �� G H��   G I C Can be used standalone or with Hedge's 'File Copy Completed' event    H � I I �   C a n   b e   u s e d   s t a n d a l o n e   o r   w i t h   H e d g e ' s   ' F i l e   C o p y   C o m p l e t e d '   e v e n t F  J K J l     ��������  ��  ��   K  L M L l     �� N O��   N  	 SETTINGS    O � P P    S E T T I N G S M  Q R Q l     �� S T��   S , & Define your separator used in the CSV    T � U U L   D e f i n e   y o u r   s e p a r a t o r   u s e d   i n   t h e   C S V R  V W V l     ��������  ��  ��   W  X Y X l     Z���� Z r      [ \ [ m      ] ] � ^ ^  , \ o      ���� 0 	separator  ��  ��   Y  _ ` _ l     ��������  ��  ��   `  a b a l     �� c d��   c � � Do you want macOS progress notifications? Tip: set the notifications created by Script Editor to 'banners' (in System Preferences > Notifications)    d � e e&   D o   y o u   w a n t   m a c O S   p r o g r e s s   n o t i f i c a t i o n s ?   T i p :   s e t   t h e   n o t i f i c a t i o n s   c r e a t e d   b y   S c r i p t   E d i t o r   t o   ' b a n n e r s '   ( i n   S y s t e m   P r e f e r e n c e s   >   N o t i f i c a t i o n s ) b  f g f l     ��������  ��  ��   g  h i h l    j���� j r     k l k m    ��
�� boovtrue l o      ���� &0 shownotifications showNotifications��  ��   i  m n m l    o p q o r     r s r m    	��
�� boovtrue s o      ���� $0 showconfirmation showConfirmation p ( " when using this script with Hedge    q � t t D   w h e n   u s i n g   t h i s   s c r i p t   w i t h   H e d g e n  u v u l     ��������  ��  ��   v  w x w l   � y���� y Z    � z {�� | z G    9 } ~ } G    /  �  G    ' � � � G     � � � G     � � � l    ����� � =    � � � m     � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m     � � � � �  S u c c e s s��  ��   � l    ����� � =    � � � m     � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m     � � � � �  C a n c e l e d��  ��   � l    ����� � =    � � � m     � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m     � � � � �  F a i l e d��  ��   � l  " % ����� � =  " % � � � m   " # � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m   # $ � � � � �  W a r n i n g s��  ��   � l  * - ����� � =  * - � � � m   * + � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m   + , � � � � �  W a i t i n g��  ��   ~ l  2 7 ����� � =  2 7 � � � m   2 3 � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m   3 6 � � � � �  P r e p a r i n g��  ��   { k   < f � �  � � � l  < <�� � ���   �   Running from Hedge    � � � � &   R u n n i n g   f r o m   H e d g e �  � � � r   < A � � � m   < =��
�� boovfals � o      ���� &0 runningstandalone runningStandAlone �  � � � r   B I � � � m   B E � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � o      ���� 20 filecopycompleted_state fileCopyCompleted_state �  � � � r   J U � � � b   J Q � � � m   J M � � � � � F { F i l e C o p y C o m p l e t e d _ d e s t i n a t i o n P a t h } � m   M P � � � � �  / � o      ���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath �  ��� � r   V f � � � c   V b � � � l  V ^ ����� � 4   V ^�� �
�� 
psxf � o   Z ]���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath��  ��   � m   ^ a��
�� 
utxt � o      ���� .0 destinationpath_posix destinationPath_POSIX��  ��   | k   i � � �  � � � l  i i�� � ���   �   Running standalone    � � � � &   R u n n i n g   s t a n d a l o n e �  � � � r   i n � � � m   i j��
�� boovtrue � o      ���� &0 runningstandalone runningStandAlone �  � � � r   o v � � � m   o r � � � � �  S u c c e s s � o      ���� 20 filecopycompleted_state fileCopyCompleted_state �  � � � r   w � � � � c   w � � � � l  w � ����� � I  w ����� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m   { ~ � � � � � , P l e a s e   c h o o s e   a   f o l d e r��  ��  ��   � m   � ���
�� 
utxt � o      ���� .0 destinationpath_posix destinationPath_POSIX �  ��� � r   � � � � � n   � � � � � 1   � ���
�� 
psxp � o   � ����� .0 destinationpath_posix destinationPath_POSIX � o      ���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath��  ��  ��   x  � � � l     ��������  ��  ��   �  � � � l  � ����� � Z   � � ����� � =  � � � � � o   � ����� 20 filecopycompleted_state fileCopyCompleted_state � m   � � � � � � �  S u c c e s s � k   � � �  � � � l  � ���������  ��  ��   �    r   � � o   � ����� .0 destinationpath_posix destinationPath_POSIX o      ���� 0 	thefolder 	theFolder  r   � � J   � �����   o      ���� 0 
file_types   	 r   � �

 m   � ���
�� boovtrue o      ���� 0 with_subfolders  	  r   � � m   � ���
�� boovfals o      ���� 0 inc_folders    r   � � m   � ���
�� boovtrue o      ���� 0 use_posix_path    r   � � m   � ���
�� boovfals o      ���� 0 return_as_string    r   � � m   � ���
�� boovfals o      ���� 0 add_to_clipboard    l  � ���������  ��  ��    t   � !  k   � "" #$# l  � ���������  ��  ��  $ %&% Z  � �'(����' o   � ����� &0 shownotifications showNotifications( I  � ���)*
�� .sysonotfnull��� ��� TEXT) m   � �++ �,, * G e t t i n g   f i l e   l i s t . . .  * ��-��
�� 
appr- m   � �.. �//  H e d g e   S c r i p t��  ��  ��  & 010 l  � �����~��  �  �~  1 232 l  � ��}45�}  4 1 + get list of all files and folders at path    5 �66 V   g e t   l i s t   o f   a l l   f i l e s   a n d   f o l d e r s   a t   p a t h  3 787 r   �
9:9 I   ��|;�{�| 0 get_folder_list  ; <=< o   � ��z�z 0 	thefolder 	theFolder= >?> o   � ��y�y 0 
file_types  ? @A@ o   � ��x�x 0 with_subfolders  A BCB o   � ��w�w 0 inc_folders  C D�vD o   � �u�u 0 use_posix_path  �v  �{  : o      �t�t 0 thelist theList8 EFE l �sGH�s  G ( " filter folders and hidden files     H �II D   f i l t e r   f o l d e r s   a n d   h i d d e n   f i l e s    F JKJ r  LML J  NN O�rO m  PP �QQ  f o l d e r�r  M o      �q�q 0 	thefilter 	theFilterK RSR r  $TUT I   �pV�o�p 0 filter_list  V WXW o  �n�n 0 thelist theListX Y�mY o  �l�l 0 	thefilter 	theFilter�m  �o  U o      �k�k 0 thefilelist theFileListS Z[Z l %%�j�i�h�j  �i  �h  [ \]\ r  %+^_^ J  %'�g�g  _ o      �f�f 0 md5list md5List] `a` l ,,�e�d�c�e  �d  �c  a bcb Z  ,Mde�b�ad F  ,7fgf o  ,-�`�` $0 showconfirmation showConfirmationg = 05hih o  03�_�_ &0 runningstandalone runningStandAlonei m  34�^
�^ boovfalse I :I�]j�\
�] .sysodlogaskr        TEXTj b  :Eklk b  :Amnm m  :=oo �pp N C r e a t e   M D 5   C h e c k s u m s   f o r   t h e   f i l e s   i n   'n o  =@�[�[ F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPathl m  ADqq �rr  ' ?�\  �b  �a  c sts l NN�Z�Y�X�Z  �Y  �X  t uvu r  NSwxw m  NO�W
�W boovtruex o      �V�V 0 showonce showOncev yzy l TT�U�T�S�U  �T  �S  z {|{ X  T�}�R~} k  j� ��� l jj�Q�P�O�Q  �P  �O  � ��� Z  j����N�M� o  jm�L�L 0 showonce showOnce� k  p��� ��� Z p����K�J� o  pq�I�I &0 shownotifications showNotifications� I t��H��
�H .sysonotfnull��� ��� TEXT� m  tw�� ��� : C a l c u l a t i n g   M D 5   c h e c k s u m s . . .  � �G��F
�G 
appr� m  z}�� ���  H e d g e   S c r i p t�F  �K  �J  � ��E� r  ����� m  ���D
�D boovfals� o      �C�C 0 showonce showOnce�E  �N  �M  � ��� l ���B�A�@�B  �A  �@  � ��� Q  ������ r  ����� I ���?��>
�? .sysoexecTEXT���     TEXT� b  ����� m  ���� ���  m d 5   - r  � l ����=�<� n  ����� 1  ���;
�; 
strq� o  ���:�: 0 currentfile currentFile�=  �<  �>  � o      �9�9 0 	md5result 	md5Result� R      �8��7
�8 .ascrerr ****      � ****� o      �6�6 0 errmsg errMsg�7  � I ���5��4
�5 .sysodisAaleR        TEXT� b  ����� m  ���� ���  W a r n i n g :  � o  ���3�3 0 errmsg errMsg�4  � ��� l ���2�1�0�2  �1  �0  � ��� r  ����� I  ���/��.�/ 0 
leftstring 
leftString� ��� o  ���-�- 0 	md5result 	md5Result� ��,� m  ���� ���   �,  �.  � o      �+�+ 0 md5  � ��� r  ����� I  ���*��)�* 0 rightstring rightString� ��� o  ���(�( 0 	md5result 	md5Result� ��'� m  ���� ���   �'  �)  � o      �&�& 0 thepath thePath� ��� r  ����� b  ����� b  ����� o  ���%�% 0 md5  � o  ���$�$ 0 	separator  � o  ���#�# 0 thepath thePath� l     ��"�!� o      � �  0 lineitem lineItem�"  �!  � ��� l ������  �  �  � ��� s  ����� o  ���� 0 lineitem lineItem� n      ���  ;  ��� o  ���� 0 md5list md5List�  �R 0 currentfile currentFile~ o  WZ�� 0 thefilelist theFileList| ��� l ������  �  �  � ��� I  ������ 0 
write_file  � ��� o  ���� .0 destinationpath_posix destinationPath_POSIX� ��� o  ���� 0 md5list md5List� ��� o  ���� &0 shownotifications showNotifications�  �  � ��� l ������  �  �  �  ! l  � ����
� ]   � ���� ]   � ���� m   � ��	�	 � m   � ��� <� m   � ��� <�  �
   ��� l ����  �  �  �  ��  ��  ��  ��   � ��� l     ��� �  �  �   � ��� l     ��������  ��  ��  � ��� l     ������  �   SUB-ROUTINES   � ���    S U B - R O U T I N E S� ��� l     ��������  ��  ��  � ��� l     ������  � s m Returns all items in a folder as a list (exclude folders paramater doesn't work, so we filter folders later)   � ��� �   R e t u r n s   a l l   i t e m s   i n   a   f o l d e r   a s   a   l i s t   ( e x c l u d e   f o l d e r s   p a r a m a t e r   d o e s n ' t   w o r k ,   s o   w e   f i l t e r   f o l d e r s   l a t e r )� ��� i     ��� I      ������� 0 get_folder_list  � ��� o      ���� 0 	thefolder 	theFolder� ��� o      ���� 0 
file_types  � ��� o      ���� 0 with_subfolders  � ��� o      ���� 0 inc_folders  �  ��  o      ���� 0 use_posix_path  ��  ��  � k     �  r      J     ����   o      ���� 0 	the_files    O   	 r   	 

 n   	  2   ��
�� 
cobj 4   	 ��
�� 
cfol o    ���� 0 	thefolder 	theFolder o      ���� 0 folder_list  	 m    �                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��    X    ��� k   # �  Q   # 6 r   & + n   & ) 1   ' )��
�� 
asty o   & '���� 0 new_file   o      ���� 0 temp_file_type   R      ������
�� .ascrerr ****      � ****��  ��   r   3 6 m   3 4   �!!  f o l d o      ���� 0 temp_file_type   "#" Z   7 e$%����$ G   7 C&'& E   7 :()( o   7 8���� 0 
file_types  ) o   8 9���� 0 temp_file_type  ' =   = A*+* o   = >���� 0 
file_types  + J   > @����  % Z   F a,-��., o   F G���� 0 use_posix_path  - r   J U/0/ b   J S121 o   J K���� 0 	the_files  2 J   K R33 4��4 n   K P565 1   N P��
�� 
psxp6 l  K N7����7 c   K N898 o   K L���� 0 new_file  9 m   L M��
�� 
utxt��  ��  ��  0 o      ���� 0 	the_files  ��  . r   X a:;: b   X _<=< o   X Y���� 0 	the_files  = J   Y ^>> ?��? c   Y \@A@ o   Y Z���� 0 new_file  A m   Z [��
�� 
utxt��  ; o      ���� 0 	the_files  ��  ��  # B��B Z   f �CD����C =   f iEFE o   f g���� 0 temp_file_type  F m   g hGG �HH  f o l dD k   l �II JKJ Z   l �LM����L F   l vNON o   l m���� 0 inc_folders  O >   p tPQP o   p q���� 0 
file_types  Q J   q s����  M Z   y �RS��TR o   y z���� 0 use_posix_path  S r   } �UVU b   } �WXW o   } ~���� 0 	the_files  X J   ~ �YY Z��Z n   ~ �[\[ 1   � ���
�� 
psxp\ l  ~ �]����] c   ~ �^_^ o   ~ ���� 0 new_file  _ m    ���
�� 
utxt��  ��  ��  V o      ���� 0 	the_files  ��  T r   � �`a` b   � �bcb o   � ����� 0 	the_files  c J   � �dd e��e c   � �fgf o   � ����� 0 new_file  g m   � ���
�� 
utxt��  a o      ���� 0 	the_files  ��  ��  K h��h Z  � �ij����i o   � ����� 0 with_subfolders  j r   � �klk b   � �mnm o   � ����� 0 	the_files  n n  � �opo I   � ���q���� 0 get_folder_list  q rsr l  � �t����t c   � �uvu o   � ����� 0 new_file  v m   � ���
�� 
utxt��  ��  s wxw o   � ����� 0 
file_types  x yzy o   � ����� 0 with_subfolders  z {|{ o   � ����� 0 inc_folders  | }��} o   � ����� 0 use_posix_path  ��  ��  p  f   � �l o      ���� 0 	the_files  ��  ��  ��  ��  ��  ��  �� 0 new_file   o    ���� 0 folder_list   ~��~ L   � � o   � ����� 0 	the_files  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � , & FILTER_LIST - returns a filtered list   � ��� L   F I L T E R _ L I S T   -   r e t u r n s   a   f i l t e r e d   l i s t� ��� i    ��� I      ������� 0 filter_list  � ��� o      ���� 0 the_list  � ���� o      ���� 0 
the_filter  ��  ��  � k     2�� ��� r     ��� J     ����  � o      ���� "0 thefilteredlist theFilteredList� ��� X    /����� Z    *������� H    �� E   ��� o    ���� 0 
the_filter  � n    ��� 1    ��
�� 
kind� l   ������ I   �����
�� .sysonfo4asfe        file� o    ���� 0 currentfile currentFile��  ��  ��  � s   " &��� o   " #���� 0 currentfile currentFile� l     ������ n      ���  ;   $ %� o   # $���� "0 thefilteredlist theFilteredList��  ��  ��  ��  �� 0 currentfile currentFile� o    	���� 0 the_list  � ���� L   0 2�� o   0 1���� "0 thefilteredlist theFilteredList��  � ��� l     ��������  ��  ��  � ��� l     ������  �   WRITE_FILE   � ���    W R I T E _ F I L E� ��� i    ��� I      ������ 0 
write_file  � ��� o      �~�~ "0 destinationpath destinationPath� ��� o      �}�} 0 thelist theList� ��|� o      �{�{ &0 shownotifications showNotifications�|  �  � k     ��� ��� r     ��� l    ��z�y� b     ��� o     �x�x "0 destinationpath destinationPath� m    �� ���  m d 5 . c s v�z  �y  � o      �w�w 0 
outputfile 
outputFile� ��v� Q    ����� k   	 V�� ��� r   	 ��� I  	 �u��
�u .rdwropenshor       file� 4   	 �t�
�t 
file� o    �s�s 0 
outputfile 
outputFile� �r��q
�r 
perm� m    �p
�p boovtrue�q  � o      �o�o 0 filereference fileReference� ��� I   �n��
�n .rdwrwritnull���     ****� b    ��� m    �� ���  M D 5   H a s h ,   P a t h� o    �m
�m 
ret � �l��k
�l 
refn� o    �j�j 0 filereference fileReference�k  � ��� l     �i�h�g�i  �h  �g  � ��� X     >��f�� I  0 9�e��
�e .rdwrwritnull���     ****� b   0 3��� o   0 1�d�d 0 theitem theItem� o   1 2�c
�c 
ret � �b��a
�b 
refn� o   4 5�`�` 0 filereference fileReference�a  �f 0 theitem theItem� o   # $�_�_ 0 thelist theList� ��� l  ? ?�^�]�\�^  �]  �\  � ��� I  ? D�[��Z
�[ .rdwrclosnull���     ****� o   ? @�Y�Y 0 filereference fileReference�Z  � ��X� Z  E V���W�V� o   E F�U�U &0 shownotifications showNotifications� I  I R�T��
�T .sysonotfnull��� ��� TEXT� b   I L��� m   I J�� ��� 2 m d 5 . c s v   f i l e   c r e a t e d   i n :  � o   J K�S�S "0 destinationpath destinationPath� �R��Q
�R 
appr� m   M N�� ���  m d 5   S c r i p t�Q  �W  �V  �X  � R      �P�O�N
�P .ascrerr ****      � ****�O  �N  � Q   ^ ����M� k   a �� ��� I  a i�L��K
�L .rdwrclosnull���     ****� 4   a e�J�
�J 
file� o   c d�I�I 0 
outputfile 
outputFile�K  � ��H� Z  j ���G�F� o   j k�E�E &0 shownotifications showNotifications� I  n {�D� 
�D .sysonotfnull��� ��� TEXT� b   n s m   n q � 2 m d 5 . c s v   f i l e   c r e a t e d   i n :   o   q r�C�C "0 destinationpath destinationPath  �B�A
�B 
appr m   t w �  H e d g e   S c r i p t�A  �G  �F  �H  � R      �@�?�>
�@ .ascrerr ****      � ****�?  �>  �M  �v  � 	 l     �=�<�;�=  �<  �;  	 

 l     �:�:   \ V RIGHT_STING - Return the text to the right of a delimiter (full string if not found).    � �   R I G H T _ S T I N G   -   R e t u r n   t h e   t e x t   t o   t h e   r i g h t   o f   a   d e l i m i t e r   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .  i     I      �9�8�9 0 rightstring rightString  o      �7�7 0 str   �6 o      �5�5 0 del  �6  �8   k     Q  q       �4�4 0 str   �3�3 0 del   �2�1�2 0 oldtids oldTIDs�1    r       n    !"! 1    �0
�0 
txdl" 1     �/
�/ 
ascr  o      �.�. 0 oldtids oldTIDs #�-# Q    Q$%&$ k   	 ;'' ()( r   	 *+* c   	 ,-, o   	 
�,�, 0 str  - m   
 �+
�+ 
TEXT+ o      �*�* 0 str  ) ./. Z   01�)�(0 H    22 E    343 o    �'�' 0 str  4 o    �&�& 0 del  1 L    55 o    �%�% 0 str  �)  �(  / 676 r    "898 o    �$�$ 0 del  9 n     :;: 1    !�#
�# 
txdl; 1    �"
�" 
ascr7 <=< r   # 2>?> c   # 0@A@ n  # .BCB 7  $ .�!DE
�! 
citmD m   ( *� �  E m   + -����C o   # $�� 0 str  A m   . /�
� 
TEXT? o      �� 0 str  = FGF r   3 8HIH o   3 4�� 0 oldtids oldTIDsI n     JKJ 1   5 7�
� 
txdlK 1   4 5�
� 
ascrG L�L L   9 ;MM o   9 :�� 0 str  �  % R      �NO
� .ascrerr ****      � ****N o      �� 0 emsg eMsgO �P�
� 
errnP o      �� 0 enum eNum�  & k   C QQQ RSR r   C HTUT o   C D�� 0 oldtids oldTIDsU n     VWV 1   E G�
� 
txdlW 1   D E�
� 
ascrS X�X R   I Q�YZ
� .ascrerr ****      � ****Y b   M P[\[ m   M N]] �^^ & C a n ' t   r i g h t S t r i n g :  \ o   N O�� 0 emsg eMsgZ �_�

� 
errn_ o   K L�	�	 0 enum eNum�
  �  �-   `a` l     ����  �  �  a bcb l     �de�  d \ V LEFT_STRING - Return the text to the left of a delimiter (full string if not found).    e �ff �   L E F T _ S T R I N G   -   R e t u r n   t h e   t e x t   t o   t h e   l e f t   o f   a   d e l i m i t e r   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .  c g�g i    hih I      �j�� 0 
leftstring 
leftStringj klk o      �� 0 str  l m� m o      ���� 0 del  �   �  i k     Hnn opo q      qq ��r�� 0 str  r ��s�� 0 del  s ������ 0 oldtids oldTIDs��  p tut r     vwv n    xyx 1    ��
�� 
txdly 1     ��
�� 
ascrw o      ���� 0 oldtids oldTIDsu z��z Q    H{|}{ k   	 2~~ � r   	 ��� c   	 ��� o   	 
���� 0 str  � m   
 ��
�� 
TEXT� o      ���� 0 str  � ��� Z   ������� H    �� E    ��� o    ���� 0 str  � o    ���� 0 del  � L    �� o    ���� 0 str  ��  ��  � ��� r    "��� o    ���� 0 del  � n     ��� 1    !��
�� 
txdl� 1    ��
�� 
ascr� ��� r   # )��� n  # '��� 4  $ '���
�� 
citm� m   % &���� � o   # $���� 0 str  � o      ���� 0 str  � ��� r   * /��� o   * +���� 0 oldtids oldTIDs� n     ��� 1   , .��
�� 
txdl� 1   + ,��
�� 
ascr� ���� L   0 2�� o   0 1���� 0 str  ��  | R      ����
�� .ascrerr ****      � ****� o      ���� 0 emsg eMsg� �����
�� 
errn� o      ���� 0 enum eNum��  } k   : H�� ��� r   : ?��� o   : ;���� 0 oldtids oldTIDs� n     ��� 1   < >��
�� 
txdl� 1   ; <��
�� 
ascr� ���� R   @ H����
�� .ascrerr ****      � ****� b   D G��� m   D E�� ��� $ C a n ' t   l e f t S t r i n g :  � o   E F���� 0 emsg eMsg� �����
�� 
errn� o   B C���� 0 enum eNum��  ��  ��  �       �����������  � �������������� 0 get_folder_list  �� 0 filter_list  �� 0 
write_file  �� 0 rightstring rightString�� 0 
leftstring 
leftString
�� .aevtoappnull  �   � ****� ������������� 0 get_folder_list  �� ����� �  ������������ 0 	thefolder 	theFolder�� 0 
file_types  �� 0 with_subfolders  �� 0 inc_folders  �� 0 use_posix_path  ��  � 	�������������������� 0 	thefolder 	theFolder�� 0 
file_types  �� 0 with_subfolders  �� 0 inc_folders  �� 0 use_posix_path  �� 0 	the_files  �� 0 folder_list  �� 0 new_file  �� 0 temp_file_type  � �������������� ������G����
�� 
cfol
�� 
cobj
�� 
kocl
�� .corecnte****       ****
�� 
asty��  ��  
�� 
bool
�� 
utxt
�� 
psxp�� �� 0 get_folder_list  �� �jvE�O� 
*�/�-E�UO ��[��l kh  
��,E�W 
X  �E�O��
 �jv �&  � ���&�,kv%E�Y ���&kv%E�Y hO��  J�	 �jv�&  � ���&�,kv%E�Y ���&kv%E�Y hO� �)��&�����+ %E�Y hY h[OY�hO�� ������������� 0 filter_list  �� ����� �  ������ 0 the_list  �� 0 
the_filter  ��  � ���������� 0 the_list  �� 0 
the_filter  �� "0 thefilteredlist theFilteredList�� 0 currentfile currentFile� ����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .sysonfo4asfe        file
�� 
kind�� 3jvE�O )�[��l kh ��j �, 	��6GY h[OY��O�� ������������� 0 
write_file  �� ����� �  �������� "0 destinationpath destinationPath�� 0 thelist theList�� &0 shownotifications showNotifications��  � �������������� "0 destinationpath destinationPath�� 0 thelist theList�� &0 shownotifications showNotifications�� 0 
outputfile 
outputFile�� 0 filereference fileReference�� 0 theitem theItem� ��������������������������������
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
�� .sysonotfnull��� ��� TEXT��  ��  �� ���%E�O R*�/�el E�O��%�l O �[��l 
kh ��%�l [OY��O�j O� �%��l Y hW 1X   #*�/j O� a �%�a l Y hW X  h� ����������� 0 rightstring rightString�� �~��~ �  �}�|�} 0 str  �| 0 del  ��  � �{�z�y�x�w�{ 0 str  �z 0 del  �y 0 oldtids oldTIDs�x 0 emsg eMsg�w 0 enum eNum� �v�u�t�s�r��q]
�v 
ascr
�u 
txdl
�t 
TEXT
�s 
citm�r 0 emsg eMsg� �p�o�n
�p 
errn�o 0 enum eNum�n  
�q 
errn� R��,E�O 7��&E�O�� �Y hO���,FO�[�\[Zl\Zi2�&E�O���,FO�W X  ���,FO)�l�%� �mi�l�k���j�m 0 
leftstring 
leftString�l �i��i �  �h�g�h 0 str  �g 0 del  �k  � �f�e�d�c�b�f 0 str  �e 0 del  �d 0 oldtids oldTIDs�c 0 emsg eMsg�b 0 enum eNum� �a�`�_�^�]��\�
�a 
ascr
�` 
txdl
�_ 
TEXT
�^ 
citm�] 0 emsg eMsg� �[�Z�Y
�[ 
errn�Z 0 enum eNum�Y  
�\ 
errn�j I��,E�O .��&E�O�� �Y hO���,FO��k/E�O���,FO�W X  ���,FO)�l�%� �X��W�V���U
�X .aevtoappnull  �   � ****� k    ��  X��  h��  m��  w��  ��T�T  �W  �V  � �S�R�S 0 currentfile currentFile�R 0 errmsg errMsg� N ]�Q�P�O � � � ��N � � � � � � � ��M ��L � ��K�J�I�H ��G ��F�E ��D�C�B�A�@�?�>�=�<+�;.�:�9�8�7P�6�5�4�3oq�2�1�0�/�.����-�,�+�*�)��(��'�&��%�$�#�"�Q 0 	separator  �P &0 shownotifications showNotifications�O $0 showconfirmation showConfirmation
�N 
bool�M &0 runningstandalone runningStandAlone�L 20 filecopycompleted_state fileCopyCompleted_state�K F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath
�J 
psxf
�I 
utxt�H .0 destinationpath_posix destinationPath_POSIX
�G 
prmp
�F .sysostflalis    ��� null
�E 
psxp�D 0 	thefolder 	theFolder�C 0 
file_types  �B 0 with_subfolders  �A 0 inc_folders  �@ 0 use_posix_path  �? 0 return_as_string  �> 0 add_to_clipboard  �= �< <
�; 
appr
�: .sysonotfnull��� ��� TEXT�9 �8 0 get_folder_list  �7 0 thelist theList�6 0 	thefilter 	theFilter�5 0 filter_list  �4 0 thefilelist theFileList�3 0 md5list md5List
�2 .sysodlogaskr        TEXT�1 0 showonce showOnce
�0 
kocl
�/ 
cobj
�. .corecnte****       ****
�- 
strq
�, .sysoexecTEXT���     TEXT�+ 0 	md5result 	md5Result�* 0 errmsg errMsg�)  
�( .sysodisAaleR        TEXT�' 0 
leftstring 
leftString�& 0 md5  �% 0 rightstring rightString�$ 0 thepath thePath�# 0 lineitem lineItem�" 0 
write_file  �U�E�OeE�OeE�O�� 
 �� �&
 �� �&
 �� �&
 �� �&
 	�a  �& /fE` Oa E` Oa a %E` O*a _ /a &E` Y /eE` Oa E` O*a a l a &E` O_ a ,E` O_ a  g_ E`  OjvE` !OeE` "OfE` #OeE` $OfE` %OfE` &Oa 'a ( a ( n� a )a *a +l ,Y hO*_  _ !_ "_ #_ $a -+ .E` /Oa 0kvE` 1O*_ /_ 1l+ 2E` 3OjvE` 4O�	 	_ f �& a 5_ %a 6%j 7Y hOeE` 8O �_ 3[a 9a :l ;kh  _ 8  � a <a *a =l ,Y hOfE` 8Y hO a >�a ?,%j @E` AW X B Ca D�%j EO*_ Aa Fl+ GE` HO*_ Aa Il+ JE` KO_ H�%_ K%E` LO_ L_ 46G[OY�xO*_ _ 4�m+ MOPoOPY h ascr  ��ޭ