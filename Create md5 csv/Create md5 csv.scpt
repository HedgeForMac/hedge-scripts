FasdUAS 1.101.10   ��   ��    k             l     ��  ��      THIS IS A HEDGE SCRIPT     � 	 	 .   T H I S   I S   A   H E D G E   S C R I P T   
  
 l     ��  ��    * $ Copyright (c) 2017 The Sync Factory     �   H   C o p y r i g h t   ( c )   2 0 1 7   T h e   S y n c   F a c t o r y      l     ��  ��      License: MIT License     �   *   L i c e n s e :   M I T   L i c e n s e      l     ��  ��    ? 9 Repository: https://github.com/HedgeForMac/hedge-scripts     �   r   R e p o s i t o r y :   h t t p s : / / g i t h u b . c o m / H e d g e F o r M a c / h e d g e - s c r i p t s      l     ��  ��    6 0 You can do whatever you like with this script.      �   `   Y o u   c a n   d o   w h a t e v e r   y o u   l i k e   w i t h   t h i s   s c r i p t .        l     ��   !��     d ^ If you add something useful, please fork this repo or send it to us at hello@hedgeformac.com.    ! � " " �   I f   y o u   a d d   s o m e t h i n g   u s e f u l ,   p l e a s e   f o r k   t h i s   r e p o   o r   s e n d   i t   t o   u s   a t   h e l l o @ h e d g e f o r m a c . c o m .   # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   '   DISCLAIMER    ( � ) )    D I S C L A I M E R &  * + * l     �� , -��   , g a Scripting is a very powerful feature, depending on the script it can be potentially destructive.    - � . . �   S c r i p t i n g   i s   a   v e r y   p o w e r f u l   f e a t u r e ,   d e p e n d i n g   o n   t h e   s c r i p t   i t   c a n   b e   p o t e n t i a l l y   d e s t r u c t i v e . +  / 0 / l     �� 1 2��   1 G A Do not use it unless you really know what you can and can't do.     2 � 3 3 �   D o   n o t   u s e   i t   u n l e s s   y o u   r e a l l y   k n o w   w h a t   y o u   c a n   a n d   c a n ' t   d o .   0  4 5 4 l     �� 6 7��   6 p j The Sync Factory doesn't offer support or assume responsibility for problems with or due to your scripts.    7 � 8 8 �   T h e   S y n c   F a c t o r y   d o e s n ' t   o f f e r   s u p p o r t   o r   a s s u m e   r e s p o n s i b i l i t y   f o r   p r o b l e m s   w i t h   o r   d u e   t o   y o u r   s c r i p t s . 5  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = !  Event: File Copy Completed    > � ? ? 6   E v e n t :   F i l e   C o p y   C o m p l e t e d <  @ A @ l     �� B C��   B j d This script creates a CSV file in the Destination Folder, with two columns: md5 checksum & filepath    C � D D �   T h i s   s c r i p t   c r e a t e s   a   C S V   f i l e   i n   t h e   D e s t i n a t i o n   F o l d e r ,   w i t h   t w o   c o l u m n s :   m d 5   c h e c k s u m   &   f i l e p a t h A  E F E l     ��������  ��  ��   F  G H G l     ��������  ��  ��   H  I J I l     �� K L��   K  	 SETTINGS    L � M M    S E T T I N G S J  N O N l     �� P Q��   P , & Define your separator used in the CSV    Q � R R L   D e f i n e   y o u r   s e p a r a t o r   u s e d   i n   t h e   C S V O  S T S l     U���� U r      V W V m      X X � Y Y  , W o      ���� 0 	separator  ��  ��   T  Z [ Z l     �� \ ]��   \ 0 * Do you want macOS progress notifications?    ] � ^ ^ T   D o   y o u   w a n t   m a c O S   p r o g r e s s   n o t i f i c a t i o n s ? [  _ ` _ l    a���� a r     b c b m    ��
�� boovtrue c o      ���� &0 shownotifications showNotifications��  ��   `  d e d l     ��������  ��  ��   e  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j   HEDGE OR STANDALONE?    k � l l *   H E D G E   O R   S T A N D A L O N E ? i  m n m l     �� o p��   o T N Use Hedge parameters, or the debug parameters when running from Script Editor    p � q q �   U s e   H e d g e   p a r a m e t e r s ,   o r   t h e   d e b u g   p a r a m e t e r s   w h e n   r u n n i n g   f r o m   S c r i p t   E d i t o r n  r s r l   � t���� t Z    � u v�� w u G    3 x y x G    + z { z G    # | } | G     ~  ~ G     � � � l    ����� � =    � � � m    	 � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m   	 
 � � � � �  S u c c e s s��  ��   � l    ����� � =    � � � m     � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m     � � � � �  C a n c e l e d��  ��    l    ����� � =    � � � m     � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m     � � � � �  F a i l e d��  ��   } l   ! ����� � =   ! � � � m     � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m      � � � � �  W a r n i n g s��  ��   { l  & ) ����� � =  & ) � � � m   & ' � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m   ' ( � � � � �  W a i t i n g��  ��   y l  . 1 ����� � =  . 1 � � � m   . / � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � m   / 0 � � � � �  P r e p a r i n g��  ��   v k   6 Z � �  � � � l  6 6�� � ���   �   Running from Hedge:    � � � � (   R u n n i n g   f r o m   H e d g e : �  � � � r   6 = � � � m   6 9 � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � o      ���� 20 filecopycompleted_state fileCopyCompleted_state �  � � � r   > I � � � b   > E � � � m   > A � � � � � F { F i l e C o p y C o m p l e t e d _ d e s t i n a t i o n P a t h } � m   A D � � � � �  / � o      ���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath �  ��� � r   J Z � � � c   J V � � � l  J R ����� � 4   J R�� �
�� 
psxf � o   N Q���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath��  ��   � m   R U��
�� 
utxt � o      ���� .0 destinationpath_posix destinationPath_POSIX��  ��   w k   ] � � �  � � � l  ] ]�� � ���   � = 7 Running standalone, or as fallback when using in Hedge    � � � � n   R u n n i n g   s t a n d a l o n e ,   o r   a s   f a l l b a c k   w h e n   u s i n g   i n   H e d g e �  � � � r   ] d � � � m   ] ` � � � � �  S u c c e s s � o      ���� 20 filecopycompleted_state fileCopyCompleted_state �  � � � r   e x � � � c   e t � � � l  e p ����� � I  e p���� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m   i l � � � � � , P l e a s e   c h o o s e   a   f o l d e r��  ��  ��   � m   p s��
�� 
utxt � o      ���� .0 destinationpath_posix destinationPath_POSIX �  ��� � r   y � � � � n   y � � � � 1   | ���
�� 
psxp � o   y |���� .0 destinationpath_posix destinationPath_POSIX � o      ���� F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath��  ��  ��   s  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   SCRIPT    � � � �    S C R I P T �  � � � l  �� ����� � Z   �� � ����� � =  � � � � � o   � ����� 20 filecopycompleted_state fileCopyCompleted_state � m   � � � � � � �  S u c c e s s � k   �� � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � o   � ����� .0 destinationpath_posix destinationPath_POSIX � o      ���� 0 	thefolder 	theFolder �  � � � r   � �   J   � �����   o      ���� 0 
file_types   �  r   � � m   � ���
�� boovtrue o      ���� 0 with_subfolders    r   � �	 m   � ���
�� boovfals	 o      ���� 0 inc_folders   

 r   � � m   � ���
�� boovtrue o      ���� 0 use_posix_path    r   � � m   � ���
�� boovfals o      ���� 0 return_as_string    r   � � m   � ���
�� boovfals o      ���� 0 add_to_clipboard    l  � ���������  ��  ��    l  � �����   1 + get list of all files and folders at path     � V   g e t   l i s t   o f   a l l   f i l e s   a n d   f o l d e r s   a t   p a t h    r   � �  I   � ���!���� 0 get_folder_list  ! "#" o   � ����� 0 	thefolder 	theFolder# $%$ o   � ����� 0 
file_types  % &'& o   � ����� 0 with_subfolders  ' ()( o   � ����� 0 inc_folders  ) *��* o   � ����� 0 use_posix_path  ��  ��    o      ���� 0 thelist theList +,+ l  � ���-.��  - ( " filter folders and hidden files     . �// D   f i l t e r   f o l d e r s   a n d   h i d d e n   f i l e s    , 010 r   � �232 J   � �44 5��5 m   � �66 �77  f o l d e r��  3 o      ���� 0 	thefilter 	theFilter1 898 r   � �:;: I   � ���<��� 0 filter_list  < =>= o   � ��~�~ 0 thelist theList> ?�}? o   � ��|�| 0 	thefilter 	theFilter�}  �  ; o      �{�{ 0 thefilelist theFileList9 @A@ l  � ��z�y�x�z  �y  �x  A BCB r   � �DED J   � ��w�w  E o      �v�v 0 md5list md5ListC FGF l  � ��u�t�s�u  �t  �s  G HIH l  � ��r�q�p�r  �q  �p  I JKJ I  ��oL�n
�o .sysodlogaskr        TEXTL b   �MNM b   � �OPO m   � �QQ �RR 0 C r e a t i n g   c h e c k s u m s   f o r   'P o   � ��m�m F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPathN m   �SS �TT L '   r e q u i r e s   y o u   t o   e n t e r   y o u r   p a s s w o r d .�n  K UVU l �l�k�j�l  �k  �j  V WXW r  YZY m  	�i
�i boovtrueZ o      �h�h 0 showonce showOnceX [\[ l �g�f�e�g  �f  �e  \ ]^] X  �_�d`_ k  $�aa bcb r  $5ded I $1�cf�b
�c .sysoexecTEXT���     TEXTf b  $-ghg m  $'ii �jj  m d 5   - r  h l ',k�a�`k n  ',lml 1  (,�_
�_ 
strqm o  '(�^�^ 0 currentfile currentFile�a  �`  �b  e o      �]�] 0 	md5result 	md5Resultc non l 66�\�[�Z�\  �[  �Z  o pqp Z  6[rs�Y�Xr o  69�W�W 0 showonce showOnces k  <Wtt uvu Z <Qwx�V�Uw o  <=�T�T &0 shownotifications showNotificationsx I @M�Syz
�S .sysonotfnull��� ��� TEXTy m  @C{{ �|| X C a l c u l a t i n g   c h e c k s u m s . . .   s i t   b a c k   a n d   r e l a x .z �R}�Q
�R 
appr} m  FI~~ �  H e d g e   S c r i p t�Q  �V  �U  v ��P� r  RW��� m  RS�O
�O boovfals� o      �N�N 0 showonce showOnce�P  �Y  �X  q ��� l \\�M�L�K�M  �L  �K  � ��� r  \k��� I  \g�J��I�J 0 
leftstring 
leftString� ��� o  ]`�H�H 0 	md5result 	md5Result� ��G� m  `c�� ���   �G  �I  � o      �F�F 0 md5  � ��� r  l{��� I  lw�E��D�E 0 rightstring rightString� ��� o  mp�C�C 0 	md5result 	md5Result� ��B� m  ps�� ���   �B  �D  � o      �A�A 0 thepath thePath� ��� r  |���� b  |���� b  |���� o  |�@�@ 0 md5  � o  ��?�? 0 	separator  � o  ���>�> 0 thepath thePath� l     ��=�<� o      �;�; 0 lineitem lineItem�=  �<  � ��� l ���:�9�8�:  �9  �8  � ��7� s  ����� o  ���6�6 0 lineitem lineItem� n      ���  ;  ��� o  ���5�5 0 md5list md5List�7  �d 0 currentfile currentFile` o  �4�4 0 thefilelist theFileList^ ��� l ���3�2�1�3  �2  �1  � ��� I  ���0��/�0 0 
write_file  � ��� o  ���.�. .0 destinationpath_posix destinationPath_POSIX� ��� o  ���-�- 0 md5list md5List� ��,� o  ���+�+ &0 shownotifications showNotifications�,  �/  � ��*� l ���)�(�'�)  �(  �'  �*  ��  ��  ��  ��   � ��� l     �&�%�$�&  �%  �$  � ��� l     �#�"�!�#  �"  �!  � ��� l     � ���   �   SUB-ROUTINES   � ���    S U B - R O U T I N E S� ��� l     ����  � �  GET_FOLDER_LIST - returns all items in a folder as a list (exclude folders paramater doesn't work, so we filter folders later)   � ��� �   G E T _ F O L D E R _ L I S T   -   r e t u r n s   a l l   i t e m s   i n   a   f o l d e r   a s   a   l i s t   ( e x c l u d e   f o l d e r s   p a r a m a t e r   d o e s n ' t   w o r k ,   s o   w e   f i l t e r   f o l d e r s   l a t e r )� ��� i     ��� I      ���� 0 get_folder_list  � ��� o      �� 0 	thefolder 	theFolder� ��� o      �� 0 
file_types  � ��� o      �� 0 with_subfolders  � ��� o      �� 0 inc_folders  � ��� o      �� 0 use_posix_path  �  �  � k     ��� ��� r     ��� J     ��  � o      �� 0 	the_files  � ��� O   ��� r   	 ��� n   	 ��� 2   �
� 
cobj� 4   	 ��
� 
cfol� o    �� 0 	thefolder 	theFolder� o      �� 0 folder_list  � m    ���                                                                                  MACS  alis    t  Macintosh HD               ��LH+   ��
Finder.app                                                      !���꒎        ����  	                CoreServices    ��/�      ��vn     �� �� ��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� X    ����� k   # ��� ��� Q   # 6���� r   & +��� n   & )��� 1   ' )�
� 
asty� o   & '�� 0 new_file  � o      �� 0 temp_file_type  � R      ���

� .ascrerr ****      � ****�  �
  � r   3 6��� m   3 4�� ���  f o l d� o      �	�	 0 temp_file_type  � ��� Z   7 e����� G   7 C��� E   7 :��� o   7 8�� 0 
file_types  � o   8 9�� 0 temp_file_type  � =   = A��� o   = >�� 0 
file_types  � J   > @��  � Z   F a����� o   F G�� 0 use_posix_path  � r   J U��� b   J S   o   J K� �  0 	the_files   J   K R �� n   K P 1   N P��
�� 
psxp l  K N���� c   K N o   K L���� 0 new_file   m   L M��
�� 
utxt��  ��  ��  � o      ���� 0 	the_files  �  � r   X a	
	 b   X _ o   X Y���� 0 	the_files   J   Y ^ �� c   Y \ o   Y Z���� 0 new_file   m   Z [��
�� 
utxt��  
 o      ���� 0 	the_files  �  �  � �� Z   f ����� =   f i o   f g���� 0 temp_file_type   m   g h �  f o l d k   l �  Z   l ����� F   l v o   l m���� 0 inc_folders   >   p t  o   p q���� 0 
file_types    J   q s����   Z   y �!"��#! o   y z���� 0 use_posix_path  " r   } �$%$ b   } �&'& o   } ~���� 0 	the_files  ' J   ~ �(( )��) n   ~ �*+* 1   � ���
�� 
psxp+ l  ~ �,����, c   ~ �-.- o   ~ ���� 0 new_file  . m    ���
�� 
utxt��  ��  ��  % o      ���� 0 	the_files  ��  # r   � �/0/ b   � �121 o   � ����� 0 	the_files  2 J   � �33 4��4 c   � �565 o   � ����� 0 new_file  6 m   � ���
�� 
utxt��  0 o      ���� 0 	the_files  ��  ��   7��7 Z  � �89����8 o   � ����� 0 with_subfolders  9 r   � �:;: b   � �<=< o   � ����� 0 	the_files  = n  � �>?> I   � ���@���� 0 get_folder_list  @ ABA l  � �C����C c   � �DED o   � ����� 0 new_file  E m   � ���
�� 
utxt��  ��  B FGF o   � ����� 0 
file_types  G HIH o   � ����� 0 with_subfolders  I JKJ o   � ����� 0 inc_folders  K L��L o   � ����� 0 use_posix_path  ��  ��  ?  f   � �; o      ���� 0 	the_files  ��  ��  ��  ��  ��  ��  � 0 new_file  � o    ���� 0 folder_list  � M��M L   � �NN o   � ����� 0 	the_files  ��  � OPO l     ��������  ��  ��  P QRQ l     ��ST��  S , & FILTER_LIST - returns a filtered list   T �UU L   F I L T E R _ L I S T   -   r e t u r n s   a   f i l t e r e d   l i s tR VWV i    XYX I      ��Z���� 0 filter_list  Z [\[ o      ���� 0 the_list  \ ]��] o      ���� 0 
the_filter  ��  ��  Y k     2^^ _`_ r     aba J     ����  b o      ���� "0 thefilteredlist theFilteredList` cdc X    /e��fe Z    *gh����g H    ii E   jkj o    ���� 0 
the_filter  k n    lml 1    ��
�� 
kindm l   n����n I   ��o��
�� .sysonfo4asfe        fileo o    ���� 0 currentfile currentFile��  ��  ��  h s   " &pqp o   " #���� 0 currentfile currentFileq l     r����r n      sts  ;   $ %t o   # $���� "0 thefilteredlist theFilteredList��  ��  ��  ��  �� 0 currentfile currentFilef o    	���� 0 the_list  d u��u L   0 2vv o   0 1���� "0 thefilteredlist theFilteredList��  W wxw l     ��������  ��  ��  x yzy l     ��{|��  {   WRITE_FILE   | �}}    W R I T E _ F I L Ez ~~ i    ��� I      ������� 0 
write_file  � ��� o      ���� "0 destinationpath destinationPath� ��� o      ���� 0 thelist theList� ���� o      ���� &0 shownotifications showNotifications��  ��  � k     ��� ��� r     ��� l    ������ b     ��� o     ���� "0 destinationpath destinationPath� m    �� ���  m d 5 . c s v��  ��  � o      ���� 0 
outputfile 
outputFile� ���� Q    ����� k   	 T�� ��� r   	 ��� I  	 ����
�� .rdwropenshor       file� 4   	 ���
�� 
file� o    ���� 0 
outputfile 
outputFile� �����
�� 
perm� m    ��
�� boovtrue��  � o      ���� 0 filereference fileReference� ��� I   ����
�� .rdwrwritnull���     ****� b    ��� m    �� ���  M D 5   H a s h ,   P a t h� o    ��
�� 
ret � �����
�� 
refn� o    ���� 0 filereference fileReference��  � ��� l     ��������  ��  ��  � ��� X     >����� I  0 9����
�� .rdwrwritnull���     ****� b   0 3��� o   0 1���� 0 theitem theItem� o   1 2��
�� 
ret � �����
�� 
refn� o   4 5���� 0 filereference fileReference��  �� 0 theitem theItem� o   # $���� 0 thelist theList� ��� l  ? ?��������  ��  ��  � ��� I  ? D�����
�� .rdwrclosnull���     ****� o   ? @���� 0 filereference fileReference��  � ��� Z  E T���~�}� o   E F�|�| &0 shownotifications showNotifications� I  I P�{��
�{ .sysonotfnull��� ��� TEXT� m   I J�� ��� ( m d 5 . c s v   f i l e   c r e a t e d� �z��y
�z 
appr� m   K L�� ���  H e d g e   S c r i p t�y  �~  �}  �  � R      �x�w�v
�x .ascrerr ****      � ****�w  �v  � Q   \ ����u� k   _ }�� ��� Z  _ r���t�s� o   _ `�r�r &0 shownotifications showNotifications� I  c n�q��
�q .sysonotfnull��� ��� TEXT� m   c f�� ��� ( m d 5 . c s v   f i l e   c r e a t e d� �p��o
�p 
appr� m   g j�� ���  H e d g e   S c r i p t�o  �t  �s  � ��� I  s {�n��m
�n .rdwrclosnull���     ****� 4   s w�l�
�l 
file� o   u v�k�k 0 
outputfile 
outputFile�m  � ��j� l  | |�i�h�g�i  �h  �g  �j  � R      �f�e�d
�f .ascrerr ****      � ****�e  �d  �u  ��   ��� l     �c�b�a�c  �b  �a  � ��� l     �`���`  � \ V RIGHT_STING - Return the text to the right of a delimiter (full string if not found).   � ��� �   R I G H T _ S T I N G   -   R e t u r n   t h e   t e x t   t o   t h e   r i g h t   o f   a   d e l i m i t e r   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .� ��� i    ��� I      �_��^�_ 0 rightstring rightString� ��� o      �]�] 0 str  � ��\� o      �[�[ 0 del  �\  �^  � k     Q�� ��� q      �� �Z��Z 0 str  � �Y��Y 0 del  � �X�W�X 0 oldtids oldTIDs�W  � ��� r     ��� n    ��� 1    �V
�V 
txdl� 1     �U
�U 
ascr� o      �T�T 0 oldtids oldTIDs� ��S� Q    Q���� k   	 ;�� ��� r   	 ��� c   	 ��� o   	 
�R�R 0 str  � m   
 �Q
�Q 
TEXT� o      �P�P 0 str  � ��� Z   ���O�N� H    �� E       o    �M�M 0 str   o    �L�L 0 del  � L     o    �K�K 0 str  �O  �N  �  r    " o    �J�J 0 del   n      1    !�I
�I 
txdl 1    �H
�H 
ascr 	
	 r   # 2 c   # 0 n  # . 7  $ .�G
�G 
citm m   ( *�F�F  m   + -�E�E�� o   # $�D�D 0 str   m   . /�C
�C 
TEXT o      �B�B 0 str  
  r   3 8 o   3 4�A�A 0 oldtids oldTIDs n      1   5 7�@
�@ 
txdl 1   4 5�?
�? 
ascr �> L   9 ; o   9 :�=�= 0 str  �>  � R      �<
�< .ascrerr ****      � **** o      �;�; 0 emsg eMsg �:�9
�: 
errn o      �8�8 0 enum eNum�9  � k   C Q   r   C H!"! o   C D�7�7 0 oldtids oldTIDs" n     #$# 1   E G�6
�6 
txdl$ 1   D E�5
�5 
ascr  %�4% R   I Q�3&'
�3 .ascrerr ****      � ****& b   M P()( m   M N** �++ & C a n ' t   r i g h t S t r i n g :  ) o   N O�2�2 0 emsg eMsg' �1,�0
�1 
errn, o   K L�/�/ 0 enum eNum�0  �4  �S  � -.- l     �.�-�,�.  �-  �,  . /0/ l     �+12�+  1 \ V LEFT_STRING - Return the text to the left of a delimiter (full string if not found).    2 �33 �   L E F T _ S T R I N G   -   R e t u r n   t h e   t e x t   t o   t h e   l e f t   o f   a   d e l i m i t e r   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .  0 4�*4 i    565 I      �)7�(�) 0 
leftstring 
leftString7 898 o      �'�' 0 str  9 :�&: o      �%�% 0 del  �&  �(  6 k     H;; <=< q      >> �$?�$ 0 str  ? �#@�# 0 del  @ �"�!�" 0 oldtids oldTIDs�!  = ABA r     CDC n    EFE 1    � 
�  
txdlF 1     �
� 
ascrD o      �� 0 oldtids oldTIDsB G�G Q    HHIJH k   	 2KK LML r   	 NON c   	 PQP o   	 
�� 0 str  Q m   
 �
� 
TEXTO o      �� 0 str  M RSR Z   TU��T H    VV E    WXW o    �� 0 str  X o    �� 0 del  U L    YY o    �� 0 str  �  �  S Z[Z r    "\]\ o    �� 0 del  ] n     ^_^ 1    !�
� 
txdl_ 1    �
� 
ascr[ `a` r   # )bcb n  # 'ded 4  $ '�f
� 
citmf m   % &�� e o   # $�� 0 str  c o      �� 0 str  a ghg r   * /iji o   * +�� 0 oldtids oldTIDsj n     klk 1   , .�
� 
txdll 1   + ,�
� 
ascrh m�
m L   0 2nn o   0 1�	�	 0 str  �
  I R      �op
� .ascrerr ****      � ****o o      �� 0 emsg eMsgp �q�
� 
errnq o      �� 0 enum eNum�  J k   : Hrr sts r   : ?uvu o   : ;�� 0 oldtids oldTIDsv n     wxw 1   < >�
� 
txdlx 1   ; <�
� 
ascrt y� y R   @ H��z{
�� .ascrerr ****      � ****z b   D G|}| m   D E~~ � $ C a n ' t   l e f t S t r i n g :  } o   E F���� 0 emsg eMsg{ �����
�� 
errn� o   B C���� 0 enum eNum��  �   �  �*       �����������  � �������������� 0 get_folder_list  �� 0 filter_list  �� 0 
write_file  �� 0 rightstring rightString�� 0 
leftstring 
leftString
�� .aevtoappnull  �   � ****� ������������� 0 get_folder_list  �� ����� �  ������������ 0 	thefolder 	theFolder�� 0 
file_types  �� 0 with_subfolders  �� 0 inc_folders  �� 0 use_posix_path  ��  � 	�������������������� 0 	thefolder 	theFolder�� 0 
file_types  �� 0 with_subfolders  �� 0 inc_folders  �� 0 use_posix_path  �� 0 	the_files  �� 0 folder_list  �� 0 new_file  �� 0 temp_file_type  � ��������������������������
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
 �jv �&  � ���&�,kv%E�Y ���&kv%E�Y hO��  J�	 �jv�&  � ���&�,kv%E�Y ���&kv%E�Y hO� �)��&�����+ %E�Y hY h[OY�hO�� ��Y���������� 0 filter_list  �� ����� �  ������ 0 the_list  �� 0 
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
outputFile�� 0 filereference fileReference�� 0 theitem theItem� ����������������������������������
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
�� .sysonotfnull��� ��� TEXT��  ��  �� ���%E�O P*�/�el E�O��%�l O �[��l 
kh ��%�l [OY��O�j O� ���l Y hW 1X   #� a �a l Y hO*�/j OPW X  h� ������������� 0 rightstring rightString�� ����� �  ������ 0 str  �� 0 del  ��  � ������������ 0 str  �� 0 del  �� 0 oldtids oldTIDs�� 0 emsg eMsg�� 0 enum eNum� �������������*
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
errn�� R��,E�O 7��&E�O�� �Y hO���,FO�[�\[Zl\Zi2�&E�O���,FO�W X  ���,FO)�l�%� ��6���������� 0 
leftstring 
leftString�� ����� �  ������ 0 str  �� 0 del  ��  � ������������ 0 str  �� 0 del  �� 0 oldtids oldTIDs�� 0 emsg eMsg�� 0 enum eNum� �������������~
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
citm�� 0 emsg eMsg� �����
�� 
errn�� 0 enum eNum�  
�� 
errn�� I��,E�O .��&E�O�� �Y hO���,FO��k/E�O���,FO�W X  ���,FO)�l�%� �~��}�|���{
�~ .aevtoappnull  �   � ****� k    ���  S��  _��  r��  ��z�z  �}  �|  � �y�y 0 currentfile currentFile� D X�x�w � � � ��v � � � � � � � � ��u � ��t�s�r�q ��p ��o�n ��m�l�k�j�i�h�g�f�e�d6�c�b�a�`QS�_�^�]�\�[i�Z�Y�X{�W~�V��U�T��S�R�Q�P�x 0 	separator  �w &0 shownotifications showNotifications
�v 
bool�u 20 filecopycompleted_state fileCopyCompleted_state�t F0 !filecopycompleted_destinationpath !fileCopyCompleted_destinationPath
�s 
psxf
�r 
utxt�q .0 destinationpath_posix destinationPath_POSIX
�p 
prmp
�o .sysostflalis    ��� null
�n 
psxp�m 0 	thefolder 	theFolder�l 0 
file_types  �k 0 with_subfolders  �j 0 inc_folders  �i 0 use_posix_path  �h 0 return_as_string  �g 0 add_to_clipboard  �f �e 0 get_folder_list  �d 0 thelist theList�c 0 	thefilter 	theFilter�b 0 filter_list  �a 0 thefilelist theFileList�` 0 md5list md5List
�_ .sysodlogaskr        TEXT�^ 0 showonce showOnce
�] 
kocl
�\ 
cobj
�[ .corecnte****       ****
�Z 
strq
�Y .sysoexecTEXT���     TEXT�X 0 	md5result 	md5Result
�W 
appr
�V .sysonotfnull��� ��� TEXT�U 0 
leftstring 
leftString�T 0 md5  �S 0 rightstring rightString�R 0 thepath thePath�Q 0 lineitem lineItem�P 0 
write_file  �{��E�OeE�O�� 
 �� �&
 �� �&
 �� �&
 �� �&
 �� �& )a E` Oa a %E` O*a _ /a &E` Y )a E` O*a a l a &E` O_ a ,E` O_ a  _ E` OjvE` OeE`  OfE` !OeE` "OfE` #OfE` $O*_ _ _  _ !_ "a %+ &E` 'Oa (kvE` )O*_ '_ )l+ *E` +OjvE` ,Oa -_ %a .%j /OeE` 0O �_ +[a 1a 2l 3kh  a 4�a 5,%j 6E` 7O_ 0  � a 8a 9a :l ;Y hOfE` 0Y hO*_ 7a <l+ =E` >O*_ 7a ?l+ @E` AO_ >�%_ A%E` BO_ B_ ,6G[OY��O*_ _ ,�m+ COPY h ascr  ��ޭ