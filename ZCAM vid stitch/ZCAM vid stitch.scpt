FasdUAS 1.101.10   ��   ��    k             l     ��  ��      THIS IS A HEDGE SCRIPT     � 	 	 .   T H I S   I S   A   H E D G E   S C R I P T   
  
 l     ��  ��    * $ Copyright (c) 2019 The Sync Factory     �   H   C o p y r i g h t   ( c )   2 0 1 9   T h e   S y n c   F a c t o r y      l     ��  ��      License: MIT License     �   *   L i c e n s e :   M I T   L i c e n s e      l     ��  ��    ? 9 Repository: https://github.com/HedgeForMac/hedge-scripts     �   r   R e p o s i t o r y :   h t t p s : / / g i t h u b . c o m / H e d g e F o r M a c / h e d g e - s c r i p t s      l     ��  ��    6 0 You can do whatever you like with this script.      �   `   Y o u   c a n   d o   w h a t e v e r   y o u   l i k e   w i t h   t h i s   s c r i p t .        l     ��   !��     d ^ If you add something useful, please fork this repo or send it to us at hello@hedgeformac.com.    ! � " " �   I f   y o u   a d d   s o m e t h i n g   u s e f u l ,   p l e a s e   f o r k   t h i s   r e p o   o r   s e n d   i t   t o   u s   a t   h e l l o @ h e d g e f o r m a c . c o m .   # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   '   DISCLAIMER    ( � ) )    D I S C L A I M E R &  * + * l     �� , -��   , g a Scripting is a very powerful feature, depending on the script it can be potentially destructive.    - � . . �   S c r i p t i n g   i s   a   v e r y   p o w e r f u l   f e a t u r e ,   d e p e n d i n g   o n   t h e   s c r i p t   i t   c a n   b e   p o t e n t i a l l y   d e s t r u c t i v e . +  / 0 / l     �� 1 2��   1 G A Do not use it unless you really know what you can and can't do.     2 � 3 3 �   D o   n o t   u s e   i t   u n l e s s   y o u   r e a l l y   k n o w   w h a t   y o u   c a n   a n d   c a n ' t   d o .   0  4 5 4 l     �� 6 7��   6 p j The Sync Factory doesn't offer support or assume responsibility for problems with or due to your scripts.    7 � 8 8 �   T h e   S y n c   F a c t o r y   d o e s n ' t   o f f e r   s u p p o r t   o r   a s s u m e   r e s p o n s i b i l i t y   f o r   p r o b l e m s   w i t h   o r   d u e   t o   y o u r   s c r i p t s . 5  9 : 9 l     ��������  ��  ��   :  ; < ; l     ��������  ��  ��   <  = > = l     �� ? @��   ?  	 README:     @ � A A    R E A D M E :   >  B C B l     �� D E��   D L F----------------------------------------------------------------------    E � F F � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - C  G H G l     ��������  ��  ��   H  I J I l     �� K L��   K F @  Scan for ZCAM files and organize them to into stitch folder --    L � M M �     S c a n   f o r   Z C A M   f i l e s   a n d   o r g a n i z e   t h e m   t o   i n t o   s t i t c h   f o l d e r   - - J  N O N l     ��������  ��  ��   O  P Q P l     �� R S��   R L F----------------------------------------------------------------------    S � T T � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - Q  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y P J This script is made for ZCAM S1 (http://www.z-cam.com/360-vr-camera-s1/)     Z � [ [ �   T h i s   s c r i p t   i s   m a d e   f o r   Z C A M   S 1   ( h t t p : / / w w w . z - c a m . c o m / 3 6 0 - v r - c a m e r a - s 1 / )   X  \ ] \ l     �� ^ _��   ^ ? 9 This camera has 4 lenses that record on 4 separate cards    _ � ` ` r   T h i s   c a m e r a   h a s   4   l e n s e s   t h a t   r e c o r d   o n   4   s e p a r a t e   c a r d s ]  a b a l     �� c d��   c Q K To stitch the clips, they needs to be moved to a separate folder per take.    d � e e �   T o   s t i t c h   t h e   c l i p s ,   t h e y   n e e d s   t o   b e   m o v e d   t o   a   s e p a r a t e   f o l d e r   p e r   t a k e . b  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j 3 - clips are called: ZCAM2300_0001_201811251455    k � l l Z   c l i p s   a r e   c a l l e d :   Z C A M 2 3 0 0 _ 0 0 0 1 _ 2 0 1 8 1 1 2 5 1 4 5 5 i  m n m l     �� o p��   o M G ZCAM = brand | 2300 = reel | 0001 = lens nr | 201811251455 = timestamp    p � q q �   Z C A M   =   b r a n d   |   2 3 0 0   =   r e e l   |   0 0 0 1   =   l e n s   n r   |   2 0 1 8 1 1 2 5 1 4 5 5   =   t i m e s t a m p n  r s r l     �� t u��   t d ^ All 4 clips (0001 to 0004) should be organized in take folder called: [timestamp]_[zcam-reel]    u � v v �   A l l   4   c l i p s   ( 0 0 0 1   t o   0 0 0 4 )   s h o u l d   b e   o r g a n i z e d   i n   t a k e   f o l d e r   c a l l e d :   [ t i m e s t a m p ] _ [ z c a m - r e e l ] s  w x w l     ��������  ��  ��   x  y z y l     �� { |��   { G A Can be used standalone or with Hedge's 'FileCopyCompleted' event    | � } } �   C a n   b e   u s e d   s t a n d a l o n e   o r   w i t h   H e d g e ' s   ' F i l e C o p y C o m p l e t e d '   e v e n t z  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   �   With Hedge:    � � � �    W i t h   H e d g e : �  � � � l     �� � ���   � S M add script to "File Copy Completed" event in Hedge's preferences / scripting    � � � � �   a d d   s c r i p t   t o   " F i l e   C o p y   C o m p l e t e d "   e v e n t   i n   H e d g e ' s   p r e f e r e n c e s   /   s c r i p t i n g �  � � � l     �� � ���   � r l when a transfer completes, the script runs, checks if the transfer was succesful and looks for ZCAM files.     � � � � �   w h e n   a   t r a n s f e r   c o m p l e t e s ,   t h e   s c r i p t   r u n s ,   c h e c k s   i f   t h e   t r a n s f e r   w a s   s u c c e s f u l   a n d   l o o k s   f o r   Z C A M   f i l e s .   �  � � � l     �� � ���   � : 4 When found, moves them to transfer destination root    � � � � h   W h e n   f o u n d ,   m o v e s   t h e m   t o   t r a n s f e r   d e s t i n a t i o n   r o o t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Witout Hedge:    � � � �    W i t o u t   H e d g e : �  � � � l     �� � ���   � M G- run script from script editor app (double click the script and CMD-r)    � � � � � -   r u n   s c r i p t   f r o m   s c r i p t   e d i t o r   a p p   ( d o u b l e   c l i c k   t h e   s c r i p t   a n d   C M D - r ) �  � � � l     �� � ���   � . (- select a folder to scan for ZCAM files    � � � � P -   s e l e c t   a   f o l d e r   t o   s c a n   f o r   Z C A M   f i l e s �  � � � l     �� � ���   � J D- optional - select a location for the "_ready for stitching" folder    � � � � � -   o p t i o n a l   -   s e l e c t   a   l o c a t i o n   f o r   t h e   " _ r e a d y   f o r   s t i t c h i n g "   f o l d e r �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  
 Settings:    � � � �    S e t t i n g s : �  � � � l     � � � � r      � � � m      � � � � � ( _ r e a d y   f o r   s t i t c h i n g � o      ���� 80 createstitchfolderwithname createStitchFolderWithName � 6 0 leave empty when there should be no folder made    � � � � `   l e a v e   e m p t y   w h e n   t h e r e   s h o u l d   b e   n o   f o l d e r   m a d e �  � � � l    � � � � r     � � � m    ��
�� boovfals � o      ���� <0 showstartconfirmationinhedge showStartConfirmationInHedge � H B when running from Hedge show a confirmation popup before starting    � � � � �   w h e n   r u n n i n g   f r o m   H e d g e   s h o w   a   c o n f i r m a t i o n   p o p u p   b e f o r e   s t a r t i n g �  � � � l    � � � � r     � � � m    	��
�� boovtrue � o      ���� 80 customstitchfolderlocation customStitchFolderLocation � a [ when running stand alone shows a location picker, otherwise its the same as folder to scan    � � � � �   w h e n   r u n n i n g   s t a n d   a l o n e   s h o w s   a   l o c a t i o n   p i c k e r ,   o t h e r w i s e   i t s   t h e   s a m e   a s   f o l d e r   t o   s c a n �  � � � l    � � � � r     � � � m    ��
�� boovtrue � o      ���� 60 showprogressnotifications showProgressNotifications � 9 3 not sure when you would ever set this to false :-)    � � � � f   n o t   s u r e   w h e n   y o u   w o u l d   e v e r   s e t   t h i s   t o   f a l s e   : - ) �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � L F----------------------------------------------------------------------    � � � � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l   � ����� � Z    � � ��� � � I    �� ����� $0 runningfromhedge runningFromHedge �  ��� � m     � � � � � " F i l e C o p y C o m p l e t e d��  ��   � k    P � �  � � � l   �� � ���   � 2 , auto setup location to look for ZCAM files	    � � � � X   a u t o   s e t u p   l o c a t i o n   t o   l o o k   f o r   Z C A M   f i l e s 	 �  � � � l    � � � � r     � � � m     � � � � � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } � o      ���� 20 filecopycompleted_state FileCopyCompleted_state �   Source or Destination    � � � � ,   S o u r c e   o r   D e s t i n a t i o n �  � � � r    " � � � l     ����� � b      � � � m     � � �   F { F i l e C o p y C o m p l e t e d _ d e s t i n a t i o n P a t h } � m     �  /��  ��   � o      ���� $0 folderpathtoscan FolderPathToScan �  l  # 0 r   # 0	 b   # ,

 I   # *������ *0 leftstringfromright leftStringFromRight  m   $ % � F { F i l e C o p y C o m p l e t e d _ d e s t i n a t i o n P a t h } �� m   % & �  /��  ��   m   * + �  /	 o      ���� "0 destinationpath DestinationPath L F set destination path to parent of "FileCopyCompleted_destinationPath"    � �   s e t   d e s t i n a t i o n   p a t h   t o   p a r e n t   o f   " F i l e C o p y C o m p l e t e d _ d e s t i n a t i o n P a t h "  l  1 1��������  ��  ��   �� Z   1 P���� o   1 2���� <0 showstartconfirmationinhedge showStartConfirmationInHedge I  5 L����
�� .sysodlogaskr        TEXT b   5 H b   5 D  b   5 B!"! b   5 >#$# b   5 :%&% m   5 8'' �(( X D o   y o u   w a n t   s c a n   f o r   ' Z C A M '   i n   f i l e n a m e s   o n  & o   8 9���� $0 folderpathtoscan FolderPathToScan$ m   : =)) �** ,   a n d   o r g a n i z e   t h e m   i n  " o   > A���� "0 destinationpath DestinationPath  o   B C���� 80 createstitchfolderwithname createStitchFolderWithName m   D G++ �,,  ?��  ��  ��  ��  ��   � k   S �-- ./. l  S S��01��  0 H B Running Standalone - manual setup location to look for ZCAM files   1 �22 �   R u n n i n g   S t a n d a l o n e   -   m a n u a l   s e t u p   l o c a t i o n   t o   l o o k   f o r   Z C A M   f i l e s/ 343 r   S X565 m   S V77 �88  S u c c e s s6 o      ���� 20 filecopycompleted_state FileCopyCompleted_state4 9:9 I  Y `��;��
�� .sysodisAaleR        TEXT; m   Y \<< �== � T h i s   s c r i p t   l o o k s   f o r   Z C A M   c l i p s   a n d   o r g a n i z e s   t h e m   i n t o   f o l d e r s   f o r   s t i t c h i n g .��  : >?> r   a r@A@ n   a pBCB 1   l p��
�� 
psxpC l  a lD����D I  a l����E
�� .sysostflalis    ��� null��  E ��F��
�� 
prmpF m   e hGG �HH V P l e a s e   s e l e c t   s o u r c e   t o   s c a n   f o r   Z C A M   c l i p s��  ��  ��  A o      ���� $0 folderpathtoscan FolderPathToScan? IJI l  s s��������  ��  ��  J KLK Z   s �MN��OM o   s t���� 80 customstitchfolderlocation customStitchFolderLocationN k   w �PP QRQ I  w ���S��
�� .sysodisAaleR        TEXTS b   w �TUT b   w �VWV m   w zXX �YY : N o w   s e t   t h e   l o c a t i o n   f o r   t h e  W n   z Z[Z 1   { ��
�� 
strq[ o   z {�� 80 createstitchfolderwithname createStitchFolderWithNameU m   � �\\ �]]    f o l d e r .��  R ^�~^ r   � �_`_ c   � �aba n   � �cdc 1   � ��}
�} 
psxpd l  � �e�|�{e I  � ��z�yf
�z .sysostflalis    ��� null�y  f �xg�w
�x 
prmpg m   � �hh �ii  S e l e c t   l o c a t i o n�w  �|  �{  b m   � ��v
�v 
utxt` o      �u�u "0 destinationpath DestinationPath�~  ��  O r   � �jkj o   � ��t�t $0 folderpathtoscan FolderPathToScank o      �s�s "0 destinationpath DestinationPathL l�rl l  � ��q�p�o�q  �p  �o  �r  ��  ��   � mnm l     �n�m�l�n  �m  �l  n opo l     �k�j�i�k  �j  �i  p qrq l     �hst�h  s 4 . Look for ZCAM files and organize into folders   t �uu \   L o o k   f o r   Z C A M   f i l e s   a n d   o r g a n i z e   i n t o   f o l d e r sr vwv l  �.x�g�fx Z   �.yz�e�dy =  � �{|{ o   � ��c�c 20 filecopycompleted_state FileCopyCompleted_state| m   � �}} �~~  S u c c e s sz k   �* ��� l  � ��b�a�`�b  �a  �`  � ��� l  � ��_���_  � t nif showProgressNotifications then display notification "Checking files... " with title "Move to stitch folder"   � ��� � i f   s h o w P r o g r e s s N o t i f i c a t i o n s   t h e n   d i s p l a y   n o t i f i c a t i o n   " C h e c k i n g   f i l e s . . .   "   w i t h   t i t l e   " M o v e   t o   s t i t c h   f o l d e r "� ��� t   �(��� l  �'���� k   �'�� ��� l  � ��^�]�\�^  �]  �\  � ��� l  � ��[���[  �   get file list   � ���    g e t   f i l e   l i s t� ��� r   � ���� J   � ��Z�Z  � o      �Y�Y 0 theindex theIndex� ��� r   � ���� I   � ��X��W�X 0 createindex createIndex� ��� o   � ��V�V $0 folderpathtoscan FolderPathToScan� ��U� o   � ��T�T 0 theindex theIndex�U  �W  � o      �S�S 0 theindex theIndex� ��� l  � ��R�Q�P�R  �Q  �P  � ��� r   � ���� m   � ��O�O  � o      �N�N 0 thezcamcount theZCAMcount� ��� l  � ��M�L�K�M  �L  �K  � ��� l  � ��J���J  � 6 0 loop over file list and try to match ZCAM files   � ��� `   l o o p   o v e r   f i l e   l i s t   a n d   t r y   t o   m a t c h   Z C A M   f i l e s� ��� X   ����I�� k   ���� ��� l  � ��H�G�F�H  �G  �F  � ��� l  � ����� r   � ���� I   � ��E��D�E ,0 rightstringfromright rightStringFromRight� ��� o   � ��C�C "0 currentfilepath currentFilePath� ��B� m   � ��� ���  /�B  �D  � o      �A�A "0 currentfilename currentfileName� "  returns last path component   � ��� 8   r e t u r n s   l a s t   p a t h   c o m p o n e n t� ��� l  �	���� r   �	��� I   ��@��?�@ ,0 rightstringfromright rightStringFromRight� ��� o   � ��>�> "0 currentfilename currentfileName� ��=� m   ��� ���  Z C A M�=  �?  � o      �<�< *0 currentzcamfilename currentZCAMfileName� 4 . returns part last part of ZCAM filename or -1   � ��� \   r e t u r n s   p a r t   l a s t   p a r t   o f   Z C A M   f i l e n a m e   o r   - 1� ��� l 

�;�:�9�;  �:  �9  � ��� Z  
����8�7� > 
��� o  
�6�6 *0 currentzcamfilename currentZCAMfileName� m  �5�5��� k  ��� ��� l �4�3�2�4  �3  �2  � ��� l �1���1  � &   get ZCAM metadata from filename   � ��� @   g e t   Z C A M   m e t a d a t a   f r o m   f i l e n a m e� ��� l !���� r  !��� I  �0��/�0 0 
leftstring 
leftString� ��� o  �.�. *0 currentzcamfilename currentZCAMfileName� ��-� m  �� ���  _�-  �/  � o      �,�, "0 currentzcamroll currentZCAMroll�   returns roll - 2003   � ��� (   r e t u r n s   r o l l   -   2 0 0 3� ��� l "9���� r  "9��� I  "5�+��*�+ 0 
leftstring 
leftString� ��� l #.��)�(� I  #.�'��&�' 0 rightstring rightString� ��� o  $'�%�% *0 currentzcamfilename currentZCAMfileName� ��$� m  '*�� �    _�$  �&  �)  �(  � �# m  .1 �  _�#  �*  � o      �"�" $0 currentzcamangle currentZCAMangle�   returns angle - 0004   � � *   r e t u r n s   a n g l e   -   0 0 0 4�  l :Q	 r  :Q

 I  :M�!� �! 0 
leftstring 
leftString  l ;F�� I  ;F��� ,0 rightstringfromright rightStringFromRight  o  <?�� *0 currentzcamfilename currentZCAMfileName � m  ?B �  _�  �  �  �   � m  FI �  .�  �    o      �� 40 currentzcamcliptimestamp currentZCAMclipTimeStamp ' ! returns timestamp - 201812202136   	 � B   r e t u r n s   t i m e s t a m p   -   2 0 1 8 1 2 2 0 2 1 3 6  l RR����  �  �    l RR��   < 6 new folder path (using [clips-timestamp]_[zcam-reel])    �   l   n e w   f o l d e r   p a t h   ( u s i n g   [ c l i p s - t i m e s t a m p ] _ [ z c a m - r e e l ] ) !"! r  Rk#$# b  Rg%&% b  Rc'(' b  R_)*) b  R[+,+ b  RW-.- o  RU�� "0 destinationpath DestinationPath. o  UV�� 80 createstitchfolderwithname createStitchFolderWithName, m  WZ// �00  /* o  [^�� 40 currentzcamcliptimestamp currentZCAMclipTimeStamp( m  _b11 �22  _& o  cf�� "0 currentzcamroll currentZCAMroll$ o      �� $0 movetofolderpath moveToFolderPath" 343 l ll����  �  �  4 565 l ll�78�  7 %  check if folder already exists   8 �99 >   c h e c k   i f   f o l d e r   a l r e a d y   e x i s t s6 :;: O  l�<=< Z  r�>?�
@> I ry�	A�
�	 .coredoexnull���     obj A o  ru�� $0 movetofolderpath moveToFolderPath�  ? r  |�BCB m  |}�
� boovfalsC o      �� 0 createfolder createFolder�
  @ r  ��DED m  ���
� boovtrueE o      �� 0 createfolder createFolder= m  loFF�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ; GHG l ����� �  �  �   H IJI l ����KL��  K !  no? create folder and move   L �MM 6   n o ?   c r e a t e   f o l d e r   a n d   m o v eJ NON Z  ��PQ����P = ��RSR o  ������ 0 createfolder createFolderS m  ����
�� boovtrueQ k  ��TT UVU r  ��WXW b  ��YZY m  ��[[ �\\  m k d i r   - p  Z n  ��]^] 1  ����
�� 
strq^ o  ������ $0 movetofolderpath moveToFolderPathX o      ���� 0 thecmd theCMDV _`_ l ����ab��  a   display alert theCMD   b �cc *   d i s p l a y   a l e r t   t h e C M D` d��d I ����e��
�� .sysoexecTEXT���     TEXTe o  ������ 0 thecmd theCMD��  ��  ��  ��  O fgf l ����������  ��  ��  g hih l ����jk��  j   yes? just move   k �ll    y e s ?   j u s t   m o v ei mnm r  ��opo b  ��qrq b  ��sts b  ��uvu b  ��wxw m  ��yy �zz  m v  x n  ��{|{ 1  ����
�� 
strq| o  ������ "0 currentfilepath currentFilePathv m  ��}} �~~   t n  ��� 1  ����
�� 
strq� o  ������ $0 movetofolderpath moveToFolderPathr m  ���� ���  /p o      ���� 0 thecmd theCMDn ���� Q  ������� l ������ k  ���� ��� I �������
�� .sysoexecTEXT���     TEXT� o  ������ 0 thecmd theCMD��  � ���� r  ����� [  ����� o  ������ 0 thezcamcount theZCAMcount� m  ������ � o      ���� 0 thezcamcount theZCAMcount��  � ? 9 ignores ZCAM files that are already in correct location    � ��� r   i g n o r e s   Z C A M   f i l e s   t h a t   a r e   a l r e a d y   i n   c o r r e c t   l o c a t i o n  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �8  �7  � ���� l ����������  ��  ��  ��  �I "0 currentfilepath currentFilePath� o   � ����� 0 theindex theIndex� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ���� Z  �'������� o  ������ 60 showprogressnotifications showProgressNotifications� k  �#�� ��� l ��������  � 8 2delay (random number from 1 to 3) -- better ux :-)   � ��� d d e l a y   ( r a n d o m   n u m b e r   f r o m   1   t o   3 )   - -   b e t t e r   u x   : - )� ��� I �!����
�� .sysonotfnull��� ��� TEXT� l ������� b  ���� l ������� c  ���� o  ������ 0 thezcamcount theZCAMcount� m  � ��
�� 
ctxt��  ��  � m  �� ��� "   Z C A M   f i l e s   m o v e d��  ��  � �����
�� 
appr� l ������ b  ��� I  ������� ,0 rightstringfromright rightStringFromRight� ��� I  	������� *0 leftstringfromright leftStringFromRight� ��� o  
���� $0 folderpathtoscan FolderPathToScan� ���� m  �� ���  /��  ��  � ���� m  �� ���  /��  ��  � m  �� ��� 0   -   M o v e   t o   s t i t c h   f o l d e r��  ��  ��  � ���� l ""��������  ��  ��  ��  ��  ��  ��  � 	  1h   � ���    1 h� l  � ������� ]   � ���� m   � ����� <� m   � ����� <��  ��  � ���� l ))��������  ��  ��  ��  �e  �d  �g  �f  w ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � p j----------------------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� i     ��� I      ������� $0 runningfromhedge runningFromHedge� ���� o      ���� 0 theevent theEvent��  ��  � k     {�� ��� l     ��������  ��  ��  � ���� Z     {������ =    ��� o     ���� 0 theevent theEvent� m    �� ��� " F i l e C o p y C o m p l e t e d� Z    O������ G    E��� G    9��� G    1��� G    )��� G    !��� G    ��� G    ��� l 	  	������ l   	������ =   	��� m    �� ��� 2 { F i l e C o p y C o m p l e t e d _ s t a t e }� m    �� ���  S u c c e s s��  ��  ��  ��  � l 	  ������ l   ������ =   ��� m    �� ��� 2 { F i l e C o p y C o m p l e t e d _ s t a t e }� m       �  C a n c e l e d��  ��  ��  ��  � l 	  ���� l   ���� =    m     � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } m     �		  F a i l e d��  ��  ��  ��  � l 	  
����
 l   ���� =    m     � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } m     �  W a r n i n g s��  ��  ��  ��  � l 	 $ '���� l  $ '���� =  $ ' m   $ % � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } m   % & �  W a i t i n g��  ��  ��  ��  � l 	 , /���� l  , /���� =  , / m   , - � 2 { F i l e C o p y C o m p l e t e d _ s t a t e } m   - .   �!!  P r e p a r i n g��  ��  ��  ��  � l 	 4 7"����" l  4 7#���# =  4 7$%$ m   4 5&& �'' 2 { F i l e C o p y C o m p l e t e d _ s t a t e }% m   5 6(( �))  Q u e u e d��  �  ��  ��  � l 	 < C*�~�}* l  < C+�|�{+ =  < C,-, m   < ?.. �// 2 { F i l e C o p y C o m p l e t e d _ s t a t e }- m   ? B00 �11  S t o p p e d�|  �{  �~  �}  � L   H J22 m   H I�z
�z boovtrue��  � L   M O33 m   M N�y
�y boovfals� 454 =  R W676 o   R S�x�x 0 theevent theEvent7 m   S V88 �99  D i s k I d l e5 :�w: Z   Z w;<�v=; G   Z m>?> l  Z a@�u�t@ =  Z aABA m   Z ]CC �DD & { D i s k I d l e _ d i s k T y p e }B m   ] `EE �FF  D e s t i n a t i o n�u  �t  ? l  d kG�s�rG =  d kHIH m   d gJJ �KK & { D i s k I d l e _ d i s k T y p e }I m   g jLL �MM  S o u r c e�s  �r  < L   p rNN m   p q�q
�q boovtrue�v  = L   u wOO m   u v�p
�p boovfals�w  ��  ��  � PQP l     �o�n�m�o  �n  �m  Q RSR l     �lTU�l  T 6 0 CREATEINDEX - returns list of all items in path   U �VV `   C R E A T E I N D E X   -   r e t u r n s   l i s t   o f   a l l   i t e m s   i n   p a t hS WXW i    YZY I      �k[�j�k 0 createindex createIndex[ \]\ o      �i�i 0 thepath thePath] ^�h^ o      �g�g 0 theindex theIndex�h  �j  Z k     M__ `a` l     �f�e�d�f  �e  �d  a bcb l     �cde�c  d   use like this:   e �ff    u s e   l i k e   t h i s :c ghg l     �bij�b  i l f - set FolderPathToScan to POSIX path of (choose folder with prompt "Please select a folder to index")   j �kk �   -   s e t   F o l d e r P a t h T o S c a n   t o   P O S I X   p a t h   o f   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " P l e a s e   s e l e c t   a   f o l d e r   t o   i n d e x " )h lml l     �ano�a  n   - set theIndex to {}   o �pp *   -   s e t   t h e I n d e x   t o   { }m qrq l     �`st�`  s @ : - set theIndex to createIndex(FolderPathToScan, theIndex)   t �uu t   -   s e t   t h e I n d e x   t o   c r e a t e I n d e x ( F o l d e r P a t h T o S c a n ,   t h e I n d e x )r vwv l     �_�^�]�_  �^  �]  w xyx r     z{z I     �\|�[�\ ,0 getallvisiblefolders getAllVisibleFolders| }�Z} o    �Y�Y 0 thepath thePath�Z  �[  { o      �X�X &0 allvisiblefolders allVisibleFoldersy ~~ r   	 ��� I   	 �W��V�W (0 getallvisiblefiles getAllVisibleFiles� ��U� o   
 �T�T 0 thepath thePath�U  �V  � o      �S�S "0 allvisiblefiles allVisibleFiles ��� l   �R�Q�P�R  �Q  �P  � ��� X    +��O�� s   " &��� o   " #�N�N 0 currentfile currentFile� l     ��M�L� n      ���  ;   $ %� o   # $�K�K 0 theindex theIndex�M  �L  �O 0 currentfile currentFile� o    �J�J "0 allvisiblefiles allVisibleFiles� ��� l  , ,�I�H�G�I  �H  �G  � ��� X   , H��F�� n  < C��� I   = C�E��D�E 0 createindex createIndex� ��� o   = >�C�C 0 currentfolder currentFolder� ��B� o   > ?�A�A 0 theindex theIndex�B  �D  �  f   < =�F 0 currentfolder currentFolder� o   / 0�@�@ &0 allvisiblefolders allVisibleFolders� ��� L   I K�� o   I J�?�? 0 theindex theIndex� ��>� l  L L�=�<�;�=  �<  �;  �>  X ��� l     �:�9�8�:  �9  �8  � ��� i    ��� I      �7��6�7 (0 getallvisiblefiles getAllVisibleFiles� ��5� o      �4�4 0 thepath thePath�5  �6  � k     �� ��� O     ��� r    ��� 6   ��� n    ��� 1   
 �3
�3 
posx� n    
��� 2   
�2
�2 
file� 4    �1�
�1 
cfol� o    �0�0 0 thepath thePath� =   ��� 1    �/
�/ 
pvis� m    �.
�. boovtrue� o      �-�- "0 allvisiblefiles allVisibleFiles� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��,� L    �� o    �+�+ "0 allvisiblefiles allVisibleFiles�,  � ��� l     �*�)�(�*  �)  �(  � ��� i    ��� I      �'��&�' ,0 getallvisiblefolders getAllVisibleFolders� ��%� o      �$�$ 0 thepath thePath�%  �&  � k     �� ��� O     ��� r    ��� 6   ��� n    ��� 1   
 �#
�# 
posx� n    
��� 2   
�"
�" 
cfol� 4    �!�
�! 
cfol� o    � �  0 thepath thePath� =   ��� 1    �
� 
pvis� m    �
� boovtrue� o      �� &0 allvisiblefolders allVisibleFolders� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� L    �� o    �� &0 allvisiblefolders allVisibleFolders�  � ��� l     ����  �  �  � ��� l     ����  � N H return the text to the right of a delimiter (full string if not found).   � ��� �   r e t u r n   t h e   t e x t   t o   t h e   r i g h t   o f   a   d e l i m i t e r   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .� ��� i    ��� I      ���� 0 rightstring rightString� ��� o      �� 0 str  � ��� o      �� 0 del  �  �  � k     Q�� ��� q      �� ��� 0 str  � ��� 0 del  � ��� 0 oldtids oldTIDs�  � ��� r     ��� n    ��� 1    �
� 
txdl� 1     �
� 
ascr� o      �� 0 oldtids oldTIDs� ��
� Q    Q���� k   	 ;�� ��� r   	 ��� c   	 ��� o   	 
�	�	 0 str  � m   
 �
� 
TEXT� o      �� 0 str  � ��� Z   ����� H    �� E       o    �� 0 str   o    �� 0 del  � L     m    �����  �  �  r    " o    �� 0 del   n      1    !� 
�  
txdl 1    ��
�� 
ascr 	
	 r   # 2 c   # 0 n  # . 7  $ .��
�� 
citm m   ( *����  m   + -������ o   # $���� 0 str   m   . /��
�� 
TEXT o      ���� 0 str  
  r   3 8 o   3 4���� 0 oldtids oldTIDs n      1   5 7��
�� 
txdl 1   4 5��
�� 
ascr �� L   9 ; o   9 :���� 0 str  ��  � R      ��
�� .ascrerr ****      � **** o      ���� 0 emsg eMsg ����
�� 
errn o      ���� 0 enum eNum��  � k   C Q   r   C H!"! o   C D���� 0 oldtids oldTIDs" n     #$# 1   E G��
�� 
txdl$ 1   D E��
�� 
ascr  %��% R   I Q��&'
�� .ascrerr ****      � ****& b   M P()( m   M N** �++ & C a n ' t   r i g h t S t r i n g :  ) o   N O���� 0 emsg eMsg' ��,��
�� 
errn, o   K L���� 0 enum eNum��  ��  �
  � -.- l     ��������  ��  ��  . /0/ l     ��12��  1 N H return the text to the left of a delimiter (full string if not found).    2 �33 �   r e t u r n   t h e   t e x t   t o   t h e   l e f t   o f   a   d e l i m i t e r   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .  0 454 i    676 I      ��8���� 0 
leftstring 
leftString8 9:9 o      ���� 0 str  : ;��; o      ���� 0 del  ��  ��  7 k     H<< =>= q      ?? ��@�� 0 str  @ ��A�� 0 del  A ������ 0 oldtids oldTIDs��  > BCB r     DED n    FGF 1    ��
�� 
txdlG 1     ��
�� 
ascrE o      ���� 0 oldtids oldTIDsC H��H Q    HIJKI k   	 2LL MNM r   	 OPO c   	 QRQ o   	 
���� 0 str  R m   
 ��
�� 
TEXTP o      ���� 0 str  N STS Z   UV����U H    WW E    XYX o    ���� 0 str  Y o    ���� 0 del  V L    ZZ m    ��������  ��  T [\[ r    "]^] o    ���� 0 del  ^ n     _`_ 1    !��
�� 
txdl` 1    ��
�� 
ascr\ aba r   # )cdc n  # 'efe 4  $ '��g
�� 
citmg m   % &���� f o   # $���� 0 str  d o      ���� 0 str  b hih r   * /jkj o   * +���� 0 oldtids oldTIDsk n     lml 1   , .��
�� 
txdlm 1   + ,��
�� 
ascri n��n L   0 2oo o   0 1���� 0 str  ��  J R      ��pq
�� .ascrerr ****      � ****p o      ���� 0 emsg eMsgq ��r��
�� 
errnr o      ���� 0 enum eNum��  K k   : Hss tut r   : ?vwv o   : ;���� 0 oldtids oldTIDsw n     xyx 1   < >��
�� 
txdly 1   ; <��
�� 
ascru z��z R   @ H��{|
�� .ascrerr ****      � ****{ b   D G}~} m   D E ��� $ C a n ' t   l e f t S t r i n g :  ~ o   E F���� 0 emsg eMsg| �����
�� 
errn� o   B C���� 0 enum eNum��  ��  ��  5 ��� l     ��������  ��  ��  � ��� l     ������  � f ` returns the text to the left of a delimiter reading from the right (full string if not found).    � ��� �   r e t u r n s   t h e   t e x t   t o   t h e   l e f t   o f   a   d e l i m i t e r   r e a d i n g   f r o m   t h e   r i g h t   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .  � ��� i    ��� I      ������� *0 leftstringfromright leftStringFromRight� ��� o      ���� 0 str  � ���� o      ���� 0 del  ��  ��  � k     Q�� ��� q      �� ����� 0 str  � ����� 0 del  � ������ 0 oldtids oldTIDs��  � ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 oldtids oldTIDs� ���� Q    Q���� k   	 ;�� ��� r   	 ��� c   	 ��� o   	 
���� 0 str  � m   
 ��
�� 
TEXT� o      ���� 0 str  � ��� Z   ������� H    �� E    ��� o    ���� 0 str  � o    ���� 0 del  � L    �� m    ��������  ��  � ��� r    "��� o    ���� 0 del  � n     ��� 1    !��
�� 
txdl� 1    ��
�� 
ascr� ��� r   # 2��� c   # 0��� n  # .��� 7  $ .����
�� 
citm� m   ( *���� � m   + -������� o   # $���� 0 str  � m   . /��
�� 
TEXT� o      ���� 0 str  � ��� r   3 8��� o   3 4���� 0 oldtids oldTIDs� n     ��� 1   5 7��
�� 
txdl� 1   4 5��
�� 
ascr� ���� L   9 ;�� o   9 :���� 0 str  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 emsg eMsg� �����
�� 
errn� o      ���� 0 enum eNum��  � k   C Q�� ��� r   C H��� o   C D���� 0 oldtids oldTIDs� n     ��� 1   E G��
�� 
txdl� 1   D E��
�� 
ascr� ���� R   I Q����
�� .ascrerr ****      � ****� b   M P��� m   M N�� ��� 6 C a n ' t   l e f t S t r i n g F r o m R i g h t :  � o   N O���� 0 emsg eMsg� ����
�� 
errn� o   K L�~�~ 0 enum eNum�  ��  ��  � ��� l     �}�|�{�}  �|  �{  � ��� l     �z���z  � f ` returns the text to the right of a delimiter reading from the right (full string if not found).   � ��� �   r e t u r n s   t h e   t e x t   t o   t h e   r i g h t   o f   a   d e l i m i t e r   r e a d i n g   f r o m   t h e   r i g h t   ( f u l l   s t r i n g   i f   n o t   f o u n d ) .� ��y� i    ��� I      �x��w�x ,0 rightstringfromright rightStringFromRight� ��� o      �v�v 0 str  � ��u� o      �t�t 0 del  �u  �w  � k     H�� ��� q      �� �s��s 0 str  � �r��r 0 del  � �q�p�q 0 oldtids oldTIDs�p  � ��� r     ��� n    ��� 1    �o
�o 
txdl� 1     �n
�n 
ascr� o      �m�m 0 oldtids oldTIDs� ��l� Q    H���� k   	 2�� ��� r   	 ��� c   	 ��� o   	 
�k�k 0 str  � m   
 �j
�j 
TEXT� o      �i�i 0 str  � � � Z   �h�g H     E     o    �f�f 0 str   o    �e�e 0 del   L     m    �d�d���h  �g     r    "	
	 o    �c�c 0 del  
 n      1    !�b
�b 
txdl 1    �a
�a 
ascr  r   # ) n  # ' 4  $ '�`
�` 
citm m   % &�_�_�� o   # $�^�^ 0 str   o      �]�] 0 str    r   * / o   * +�\�\ 0 oldtids oldTIDs n      1   , .�[
�[ 
txdl 1   + ,�Z
�Z 
ascr �Y L   0 2 o   0 1�X�X 0 str  �Y  � R      �W
�W .ascrerr ****      � **** o      �V�V 0 emsg eMsg �U�T
�U 
errn o      �S�S 0 enum eNum�T  � k   : H  !  r   : ?"#" o   : ;�R�R 0 oldtids oldTIDs# n     $%$ 1   < >�Q
�Q 
txdl% 1   ; <�P
�P 
ascr! &�O& R   @ H�N'(
�N .ascrerr ****      � ****' b   D G)*) m   D E++ �,, 8 C a n ' t   r i g h t S t r i n g F r o m R i g h t :  * o   E F�M�M 0 emsg eMsg( �L-�K
�L 
errn- o   B C�J�J 0 enum eNum�K  �O  �l  �y       �I./01234567�I  . 	�H�G�F�E�D�C�B�A�@�H $0 runningfromhedge runningFromHedge�G 0 createindex createIndex�F (0 getallvisiblefiles getAllVisibleFiles�E ,0 getallvisiblefolders getAllVisibleFolders�D 0 rightstring rightString�C 0 
leftstring 
leftString�B *0 leftstringfromright leftStringFromRight�A ,0 rightstringfromright rightStringFromRight
�@ .aevtoappnull  �   � ****/ �?��>�=89�<�? $0 runningfromhedge runningFromHedge�> �;:�; :  �:�: 0 theevent theEvent�=  8 �9�9 0 theevent theEvent9 ���� �8 &(.08CEJL
�8 
bool�< |��  N�� 
 �� �&
 �� �&
 �� �&
 �� �&
 �� �&
 �� �&
 a a  �& eY fY +�a   "a a  
 a a  �& eY fY h0 �7Z�6�5;<�4�7 0 createindex createIndex�6 �3=�3 =  �2�1�2 0 thepath thePath�1 0 theindex theIndex�5  ; �0�/�.�-�,�+�0 0 thepath thePath�/ 0 theindex theIndex�. &0 allvisiblefolders allVisibleFolders�- "0 allvisiblefiles allVisibleFiles�, 0 currentfile currentFile�+ 0 currentfolder currentFolder< �*�)�(�'�&�%�* ,0 getallvisiblefolders getAllVisibleFolders�) (0 getallvisiblefiles getAllVisibleFiles
�( 
kocl
�' 
cobj
�& .corecnte****       ****�% 0 createindex createIndex�4 N*�k+  E�O*�k+ E�O �[��l kh ��6G[OY��O �[��l kh )��l+ [OY��O�OP1 �$��#�">?�!�$ (0 getallvisiblefiles getAllVisibleFiles�# � @�  @  �� 0 thepath thePath�"  > ��� 0 thepath thePath� "0 allvisiblefiles allVisibleFiles? ����A�
� 
cfol
� 
file
� 
posxA  
� 
pvis�! � *�/�-�,�[�,\Ze81E�UO�2 ����BC�� ,0 getallvisiblefolders getAllVisibleFolders� �D� D  �� 0 thepath thePath�  B ��� 0 thepath thePath� &0 allvisiblefolders allVisibleFoldersC ���A�
� 
cfol
� 
posx
� 
pvis� � *�/�-�,�[�,\Ze81E�UO�3 ����EF�
� 0 rightstring rightString� �	G�	 G  ��� 0 str  � 0 del  �  E ������ 0 str  � 0 del  � 0 oldtids oldTIDs� 0 emsg eMsg� 0 enum eNumF �� ������H��*
� 
ascr
�  
txdl
�� 
TEXT
�� 
citm�� 0 emsg eMsgH ������
�� 
errn�� 0 enum eNum��  
�� 
errn�
 R��,E�O 7��&E�O�� iY hO���,FO�[�\[Zl\Zi2�&E�O���,FO�W X  ���,FO)�l�%4 ��7����IJ���� 0 
leftstring 
leftString�� ��K�� K  ������ 0 str  �� 0 del  ��  I ������������ 0 str  �� 0 del  �� 0 oldtids oldTIDs�� 0 emsg eMsg�� 0 enum eNumJ ����������L��
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
citm�� 0 emsg eMsgL ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� I��,E�O .��&E�O�� iY hO���,FO��k/E�O���,FO�W X  ���,FO)�l�%5 �������MN���� *0 leftstringfromright leftStringFromRight�� ��O�� O  ������ 0 str  �� 0 del  ��  M ������������ 0 str  �� 0 del  �� 0 oldtids oldTIDs�� 0 emsg eMsg�� 0 enum eNumN 	������������P���
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
citm������ 0 emsg eMsgP ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� R��,E�O 7��&E�O�� iY hO���,FO�[�\[Zk\Z�2�&E�O���,FO�W X  ���,FO)�l�%6 �������QR���� ,0 rightstringfromright rightStringFromRight�� ��S�� S  ������ 0 str  �� 0 del  ��  Q ������������ 0 str  �� 0 del  �� 0 oldtids oldTIDs�� 0 emsg eMsg�� 0 enum eNumR ����������T��+
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
citm�� 0 emsg eMsgT ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� I��,E�O .��&E�O�� iY hO���,FO��i/E�O���,FO�W X  ���,FO)�l�%7 ��U����VW��
�� .aevtoappnull  �   � ****U k    .XX  �YY  �ZZ  �[[  �\\  �]] v����  ��  ��  V ���� "0 currentfilepath currentFilePathW M ��������� ��� ��� �������')+��7<����G����X��\h��}����������������������������������/1��F����[����y}����������������� 80 createstitchfolderwithname createStitchFolderWithName�� <0 showstartconfirmationinhedge showStartConfirmationInHedge�� 80 customstitchfolderlocation customStitchFolderLocation�� 60 showprogressnotifications showProgressNotifications�� $0 runningfromhedge runningFromHedge�� 20 filecopycompleted_state FileCopyCompleted_state�� $0 folderpathtoscan FolderPathToScan�� *0 leftstringfromright leftStringFromRight�� "0 destinationpath DestinationPath
�� .sysodlogaskr        TEXT
�� .sysodisAaleR        TEXT
�� 
prmp
�� .sysostflalis    ��� null
�� 
psxp
�� 
strq
�� 
utxt�� <�� 0 theindex theIndex�� 0 createindex createIndex�� 0 thezcamcount theZCAMcount
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� ,0 rightstringfromright rightStringFromRight�� "0 currentfilename currentfileName�� *0 currentzcamfilename currentZCAMfileName�� 0 
leftstring 
leftString�� "0 currentzcamroll currentZCAMroll�� 0 rightstring rightString�� $0 currentzcamangle currentZCAMangle�� 40 currentzcamcliptimestamp currentZCAMclipTimeStamp�� $0 movetofolderpath moveToFolderPath
�� .coredoexnull���     obj �� 0 createfolder createFolder�� 0 thecmd theCMD
�� .sysoexecTEXT���     TEXT��  ��  
�� 
ctxt
�� 
appr
�� .sysonotfnull��� ��� TEXT��/�E�OfE�OeE�OeE�O*�k+  <�E�O��%E�O*��l+ �%E` O� a �%a %_ %�%a %j Y hY Ya E�Oa j O*a a l a ,E�O� .a �a ,%a %j O*a a l a ,a  &E` Y �E` OPO�a ! |a "a " njvE` #O*�_ #l+ $E` #OjE` %O_ #[a &a 'l (kh  *�a )l+ *E` +O*_ +a ,l+ *E` -O_ -i �*_ -a .l+ /E` 0O**_ -a 1l+ 2a 3l+ /E` 4O**_ -a 5l+ *a 6l+ /E` 7O_ �%a 8%_ 7%a 9%_ 0%E` :Oa ; _ :j < 
fE` =Y eE` =UO_ =e  a >_ :a ,%E` ?O_ ?j @Y hOa A�a ,%a B%_ :a ,%a C%E` ?O _ ?j @O_ %kE` %W X D EhY hOP[OY��O� ._ %a F&a G%a H**�a Il+ a Jl+ *a K%l LOPY hoOPY h ascr  ��ޭ