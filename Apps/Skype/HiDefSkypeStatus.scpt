FasdUAS 1.101.10   ��   ��    k             l     ��  ��      HiDef Skype Status     � 	 	 &   H i D e f   S k y p e   S t a t u s   
  
 l     ��  ��    B < Copyright (c) 2011-2012 Mark Horlbeck. All rights reserved.     �   x   C o p y r i g h t   ( c )   2 0 1 1 - 2 0 1 2   M a r k   H o r l b e c k .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��  ��    $  This script works as follows:     �   <   T h i s   s c r i p t   w o r k s   a s   f o l l o w s :      l     ��  ��    f `	If you're online and not on a call, then the script toggles status between "Online" and "Away".     �   � 	 I f   y o u ' r e   o n l i n e   a n d   n o t   o n   a   c a l l ,   t h e n   t h e   s c r i p t   t o g g l e s   s t a t u s   b e t w e e n   " O n l i n e "   a n d   " A w a y " .      l     ��  ��    � �	If you're online and a call is ringing in, then the script answers the call, sets your status to "DND", and mutes you by default.     �   	 I f   y o u ' r e   o n l i n e   a n d   a   c a l l   i s   r i n g i n g   i n ,   t h e n   t h e   s c r i p t   a n s w e r s   t h e   c a l l ,   s e t s   y o u r   s t a t u s   t o   " D N D " ,   a n d   m u t e s   y o u   b y   d e f a u l t .     !   l     �� " #��   " D >	If you're online and on a call, then the script toggles mute.    # � $ $ | 	 I f   y o u ' r e   o n l i n e   a n d   o n   a   c a l l ,   t h e n   t h e   s c r i p t   t o g g l e s   m u t e . !  % & % p       ' ' ������  0 growlisrunning growlIsRunning��   &  ( ) ( p       * * ������ 0 
scriptname 
scriptName��   )  + , + l     -���� - r      . / . m      0 0 � 1 1 $ H i D e f   S k y p e   S t a t u s / o      ���� 0 
scriptname 
scriptName��  ��   ,  2 3 2 l    4���� 4 r     5 6 5 b     7 8 7 n     9 : 9 1    ��
�� 
psxp : l    ;���� ; I   �� < =
�� .earsffdralis        afdr < m    ��
�� afdrasup = �� >��
�� 
from > m    ��
�� fldmfldu��  ��  ��   8 m     ? ? � @ @ \ S k y p e / S c r i p t s / H i D e f S k y p e S t a t u s - C a l l P o l l e r . s c p t 6 o      ���� ,0 pollerscriptfilepath pollerScriptFilepath��  ��   3  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   See if Growl is running    F � G G 0   S e e   i f   G r o w l   i s   r u n n i n g D  H I H l   + J���� J O    + K L K r    * M N M ?    ( O P O l   & Q���� Q I   &�� R��
�� .corecnte****       **** R l   " S���� S 6   " T U T 2    ��
�� 
prcs U =   ! V W V 1    ��
�� 
bnid W m      X X � Y Y 0 c o m . G r o w l . G r o w l H e l p e r A p p��  ��  ��  ��  ��   P m   & '����   N o      ����  0 growlisrunning growlIsRunning L m     Z Z�                                                                                  sevs  alis    �  Hyperion                   �I�H+   !�System Events.app                                               "׿��z        ����  	                CoreServices    �J~      �3�     !� !�� !��  9Hyperion:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    H y p e r i o n  -System/Library/CoreServices/System Events.app   / ��  ��  ��   I  [ \ [ l     ��������  ��  ��   \  ] ^ ] l  , ^ _���� _ O   , ^ ` a ` k   2 ] b b  c d c l  2 2�� e f��   e    Get current online status    f � g g 4   G e t   c u r r e n t   o n l i n e   s t a t u s d  h i h r   2 G j k j l  2 C l���� l I  2 C���� m
�� .sendskypnull��� ��� null��   m �� n o
�� 
cmnd n m   6 9 p p � q q  G E T   U S E R S T A T U S o �� r��
�� 
scrp r o   < =���� 0 
scriptname 
scriptName��  ��  ��   k o      ����  0 statusoriginal statusOriginal i  s�� s r   H ] t u t l  H Y v���� v I  H Y���� w
�� .sendskypnull��� ��� null��   w �� x y
�� 
cmnd x m   L O z z � { { $ S E A R C H   A C T I V E C A L L S y �� |��
�� 
scrp | o   R S���� 0 
scriptname 
scriptName��  ��  ��   u o      ���� 	0 calls  ��   a m   , / } }�                                                                                  SKYP  alis    <  Hyperion                   �I�H+   !�1	Skype.app                                                       q���y�         ����  	                Applications    �J~      �z?�     !�1   Hyperion:Applications: Skype.app   	 S k y p e . a p p    H y p e r i o n  Applications/Skype.app  / ��  ��  ��   ^  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   � ; 5 Check to see if there are any actively ringing calls    � � � � j   C h e c k   t o   s e e   i f   t h e r e   a r e   a n y   a c t i v e l y   r i n g i n g   c a l l s �  � � � l  _ s ����� � r   _ s � � � n   _ o � � � 4   j o�� �
�� 
cobj � m   m n����  � I   _ j�� ����� 0 	splittext 	splitText �  � � � m   ` c � � � � �    �  ��� � o   c f���� 	0 calls  ��  ��   � o      ���� 0 callid callId��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   If there is a call:    � � � � (   I f   t h e r e   i s   a   c a l l : �  � � � l  t� ����� � Z   t� � � ��� � >  t { � � � o   t w���� 0 callid callId � m   w z � � � � �   � k   ~  � �  � � � l  ~ ~�� � ���   �   Get the call status    � � � � (   G e t   t h e   c a l l   s t a t u s �  � � � O   ~ � � � � r   � � � � � l  � � ����� � I  � ����� �
�� .sendskypnull��� ��� null��   � �� � �
�� 
cmnd � b   � � � � � b   � � � � � m   � � � � � � �  G E T   C A L L   � o   � ����� 0 callid callId � m   � � � � � � �    S T A T U S � �� ���
�� 
scrp � o   � ����� 0 
scriptname 
scriptName��  ��  ��   � o      ���� 0 
callstatus 
callStatus � m   ~ � � ��                                                                                  SKYP  alis    <  Hyperion                   �I�H+   !�1	Skype.app                                                       q���y�         ����  	                Applications    �J~      �z?�     !�1   Hyperion:Applications: Skype.app   	 S k y p e . a p p    H y p e r i o n  Applications/Skype.app  / ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � : 4 If the call is ringing and hasn't been answered yet    � � � � h   I f   t h e   c a l l   i s   r i n g i n g   a n d   h a s n ' t   b e e n   a n s w e r e d   y e t �  � � � Z   � � ��� � � =  � � � � � o   � ����� 0 
callstatus 
callStatus � b   � � � � � b   � � � � � m   � � � � � � � 
 C A L L   � o   � ����� 0 callid callId � m   � � � � � � �    S T A T U S   R I N G I N G � k   �F � �  � � � l  � ��� � ���   � ; 5 Answer the call, change your status to DND, and mute    � � � � j   A n s w e r   t h e   c a l l ,   c h a n g e   y o u r   s t a t u s   t o   D N D ,   a n d   m u t e �  � � � O   � � � � � k   � � � �  � � � I  � ����� �
�� .sendskypnull��� ��� null��   � �� � �
�� 
cmnd � b   � � � � � b   � � � � � m   � � � � � � �  A L T E R   C A L L   � o   � ����� 0 callid callId � m   � � � � � � �    A N S W E R � �� ���
�� 
scrp � o   � ����� 0 
scriptname 
scriptName��   �  � � � I  � ����� �
�� .sendskypnull��� ��� null��   � �� � �
�� 
cmnd � m   � � � � � � � $ S E T   U S E R S T A T U S   D N D � �� ���
�� 
scrp � o   � ����� 0 
scriptname 
scriptName��   �  ��� � I  � ����� �
�� .sendskypnull��� ��� null��   � �� � �
�� 
cmnd � m   � � � � � � �  S E T   M U T E   O N � �� ���
�� 
scrp � o   � ��� 0 
scriptname 
scriptName��  ��   � m   � � � ��                                                                                  SKYP  alis    <  Hyperion                   �I�H+   !�1	Skype.app                                                       q���y�         ����  	                Applications    �J~      �z?�     !�1   Hyperion:Applications: Skype.app   	 S k y p e . a p p    H y p e r i o n  Applications/Skype.app  / ��   �  � � � I   ��~ ��}�~ 0 growlnotify growlNotify �    m   � � �  S t a t u s   C h a n g e  o   � ��|�| 0 
scriptname 
scriptName �{ m   � � j C a l l   a n s w e r e d ,   s t a t u s   s e t   t o   D N D ,   a n d   m u t e   t u r n e d   o n .�{  �}   � 	
	 l �z�y�x�z  �y  �x  
  l �w�w   !  Launch polling Applescript    � 6   L a u n c h   p o l l i n g   A p p l e s c r i p t  r   m  �v
�v boovfals o      �u�u 0 launched    O  + k  *  I $�t�s
�t .sysoexecTEXT���     TEXT b    b   m     �!! & / u s r / b i n / o s a s c r i p t   n  "#" 1  �r
�r 
strq# o  �q�q ,0 pollerscriptfilepath pollerScriptFilepath m  $$ �%%    & >   / d e v / n u l l   &�s   &�p& r  %*'(' m  %&�o
�o boovtrue( o      �n�n 0 launched  �p   m  ))�                                                                                  MACS  alis    h  Hyperion                   �I�H+   !�
Finder.app                                                      "�T�y�        ����  	                CoreServices    �J~      �zk     !� !�� !��  2Hyperion:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    H y p e r i o n  &System/Library/CoreServices/Finder.app  / ��   *+* l ,,�m�l�k�m  �l  �k  + ,-, Z  ,D./�j�i. = ,1010 o  ,/�h�h 0 launched  1 m  /0�g
�g boovtrue/ I  4@�f2�e�f 0 ongrowlnotify onGrowlNotify2 343 m  5855 �66  S t a t u s   C h a n g e4 787 o  89�d�d 0 
scriptname 
scriptName8 9�c9 m  9<:: �;;   P o l l e r   l a u n c h e d .�c  �e  �j  �i  - <=< l EE�b�a�`�b  �a  �`  = >�_> l EE�^?@�^  ?   Otherwise, toggle mute   @ �AA .   O t h e r w i s e ,   t o g g l e   m u t e�_  ��   � k  IBB CDC l II�]�\�[�]  �\  �[  D EFE O  IeGHG k  OdII JKJ l OO�ZLM�Z  L   Get current mute status   M �NN 0   G e t   c u r r e n t   m u t e   s t a t u sK O�YO r  OdPQP l O`R�X�WR I O`�V�US
�V .sendskypnull��� ��� null�U  S �TTU
�T 
cmndT m  SVVV �WW  G E T   M U T EU �SX�R
�S 
scrpX o  YZ�Q�Q 0 
scriptname 
scriptName�R  �X  �W  Q o      �P�P (0 mutestatusoriginal muteStatusOriginal�Y  H m  ILYY�                                                                                  SKYP  alis    <  Hyperion                   �I�H+   !�1	Skype.app                                                       q���y�         ����  	                Applications    �J~      �z?�     !�1   Hyperion:Applications: Skype.app   	 S k y p e . a p p    H y p e r i o n  Applications/Skype.app  / ��  F Z[Z l ff�O�N�M�O  �N  �M  [ \]\ Z  f�^_`�L^ = fmaba l fic�K�Jc o  fi�I�I (0 mutestatusoriginal muteStatusOriginal�K  �J  b m  ildd �ee  M U T E   O F F_ k  p�ff ghg l pp�Hij�H  i !  If mute is off, turn it on   j �kk 6   I f   m u t e   i s   o f f ,   t u r n   i t   o nh l�Gl O  p�mnm k  v�oo pqp I v��F�Er
�F .sendskypnull��� ��� null�E  r �Dst
�D 
cmnds m  z}uu �vv  S E T   M U T E   O Nt �Cw�B
�C 
scrpw o  ���A�A 0 
scriptname 
scriptName�B  q x�@x r  ��yzy l ��{�?�>{ I ���=�<|
�= .sendskypnull��� ��� null�<  | �;}~
�; 
cmnd} m  �� ���  G E T   M U T E~ �:��9
�: 
scrp� o  ���8�8 0 
scriptname 
scriptName�9  �?  �>  z o      �7�7 0 mutestatusnew muteStatusNew�@  n m  ps���                                                                                  SKYP  alis    <  Hyperion                   �I�H+   !�1	Skype.app                                                       q���y�         ����  	                Applications    �J~      �z?�     !�1   Hyperion:Applications: Skype.app   	 S k y p e . a p p    H y p e r i o n  Applications/Skype.app  / ��  �G  ` ��� = ����� l ����6�5� o  ���4�4 (0 mutestatusoriginal muteStatusOriginal�6  �5  � m  ���� ���  M U T E   O N� ��3� k  ���� ��� l ���2���2  � !  If mute is on, turn it off   � ��� 6   I f   m u t e   i s   o n ,   t u r n   i t   o f f� ��1� O  ����� k  ���� ��� I ���0�/�
�0 .sendskypnull��� ��� null�/  � �.��
�. 
cmnd� m  ���� ���  S E T   M U T E   O F F� �-��,
�- 
scrp� o  ���+�+ 0 
scriptname 
scriptName�,  � ��*� r  ����� l ����)�(� I ���'�&�
�' .sendskypnull��� ��� null�&  � �%��
�% 
cmnd� m  ���� ���  G E T   M U T E� �$��#
�$ 
scrp� o  ���"�" 0 
scriptname 
scriptName�#  �)  �(  � o      �!�! 0 mutestatusnew muteStatusNew�*  � m  �����                                                                                  SKYP  alis    <  Hyperion                   �I�H+   !�1	Skype.app                                                       q���y�         ����  	                Applications    �J~      �z?�     !�1   Hyperion:Applications: Skype.app   	 S k y p e . a p p    H y p e r i o n  Applications/Skype.app  / ��  �1  �3  �L  ] ��� l ��� ���   �  �  � ��� l ������  � %  Notify Growl of the new status   � ��� >   N o t i f y   G r o w l   o f   t h e   n e w   s t a t u s� ��� Z  ������ > ����� l ������ o  ���� 0 mutestatusnew muteStatusNew�  �  � l ������ o  ���� (0 mutestatusoriginal muteStatusOriginal�  �  � k  ��� ��� Z  ������ l ������ = ����� o  ���� 0 mutestatusnew muteStatusNew� m  ���� ���  M U T E   O N�  �  � I  ������ 0 growlnotify growlNotify� ��� m  ���� ���  M u t e   C h a n g e� ��� o  ���� 0 
scriptname 
scriptName� ��� m  ���� ���  M u t e   O n�  �  �  � I  ���� 0 growlnotify growlNotify� ��� m  �� ���  M u t e   C h a n g e� ��� o  �
�
 0 
scriptname 
scriptName� ��	� m  	�� ���  M u t e   O f f�	  �  � ��� l ����  �  �  �  �  � I  ���� 0 growlnotify growlNotify� ��� m  �� ���  M u t e   C h a n g e� ��� o  �� 0 
scriptname 
scriptName� ��� m  �� ��� $ M u t e / U n m u t e   F a i l e d�  �  �   � �� � l ��������  ��  ��  �    � ��� = #*��� o  #&���� 	0 calls  � m  &)�� ���  C A L L S  � ���� k  -��� ��� l --������  � i c If status is away or DND (from when you were previously on a call, for instance), set it to online   � ��� �   I f   s t a t u s   i s   a w a y   o r   D N D   ( f r o m   w h e n   y o u   w e r e   p r e v i o u s l y   o n   a   c a l l ,   f o r   i n s t a n c e ) ,   s e t   i t   t o   o n l i n e� ��� Z  -|������� G  -P��� G  -B��� = -4��� l -0������ o  -0����  0 statusoriginal statusOriginal��  ��  � m  03�� ���  U S E R S T A T U S   A W A Y� = 7>��� l 7:������ o  7:����  0 statusoriginal statusOriginal��  ��  � m  :=�� �   $ U S E R S T A T U S   O F F L I N E� = EL l EH���� o  EH����  0 statusoriginal statusOriginal��  ��   m  HK �  U S E R S T A T U S   D N D� k  Sx  I  S_��	���� 0 growlnotify growlNotify	 

 m  TW �  S t a t u s   C h a n g e  o  WX���� 0 
scriptname 
scriptName �� m  X[ � 2 S t a t u s   c h a n g e d   t o   o n l i n e .��  ��   �� O  `x I fw����
�� .sendskypnull��� ��� null��   ��
�� 
cmnd m  jm � * S E T   U S E R S T A T U S   O N L I N E ����
�� 
scrp o  pq���� 0 
scriptname 
scriptName��   m  `c�                                                                                  SKYP  alis    <  Hyperion                   �I�H+   !�1	Skype.app                                                       q���y�         ����  	                Applications    �J~      �z?�     !�1   Hyperion:Applications: Skype.app   	 S k y p e . a p p    H y p e r i o n  Applications/Skype.app  / ��  ��  ��  ��  �  l }}��������  ��  ��     l }}��!"��  ! * $ If status is online, set it to away   " �## H   I f   s t a t u s   i s   o n l i n e ,   s e t   i t   t o   a w a y  $��$ Z  }�%&����% = }�'(' l }�)����) o  }�����  0 statusoriginal statusOriginal��  ��  ( m  ��** �++ " U S E R S T A T U S   O N L I N E& k  ��,, -.- I  ����/���� 0 growlnotify growlNotify/ 010 m  ��22 �33  S t a t u s   C h a n g e1 454 o  ������ 0 
scriptname 
scriptName5 6��6 m  ��77 �88 . S t a t u s   c h a n g e d   t o   a w a y .��  ��  . 9��9 O  ��:;: I ������<
�� .sendskypnull��� ��� null��  < ��=>
�� 
cmnd= m  ��?? �@@ & S E T   U S E R S T A T U S   A W A Y> ��A��
�� 
scrpA o  ������ 0 
scriptname 
scriptName��  ; m  ��BB�                                                                                  SKYP  alis    <  Hyperion                   �I�H+   !�1	Skype.app                                                       q���y�         ����  	                Applications    �J~      �z?�     !�1   Hyperion:Applications: Skype.app   	 S k y p e . a p p    H y p e r i o n  Applications/Skype.app  / ��  ��  ��  ��  ��  ��  ��  ��  ��   � CDC l     ��������  ��  ��  D EFE l �G����G Z  �HI����H o  ������  0 growlisrunning growlIsRunningI O  ��JKJ k  ��LL MNM l ����OP��  O L F Make a list of all notification types that this script will ever send   P �QQ �   M a k e   a   l i s t   o f   a l l   n o t i f i c a t i o n   t y p e s   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n dN RSR r  ��TUT J  ��VV WXW m  ��YY �ZZ  S t a t u s   C h a n g eX [��[ m  ��\\ �]]  M u t e   C h a n g e��  U l     ^����^ o      ���� ,0 allnotificationslist allNotificationsList��  ��  S _`_ l ����������  ��  ��  ` aba l ����cd��  c C = Make a list of notifications that will be enabled by default   d �ee z   M a k e   a   l i s t   o f   n o t i f i c a t i o n s   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l tb fgf r  ��hih J  ��jj klk m  ��mm �nn  S t a t u s   C h a n g el o��o m  ��pp �qq  M u t e   C h a n g e��  i l     r����r o      ���� 40 enablednotificationslist enabledNotificationsList��  ��  g sts l ����������  ��  ��  t uvu l ����wx��  w %  Register our script with Growl   x �yy >   R e g i s t e r   o u r   s c r i p t   w i t h   G r o w lv z��z I ������{
�� .registernull��� ��� null��  { ��|}
�� 
appl| o  ������ 0 
scriptname 
scriptName} ��~
�� 
anot~ o  ������ ,0 allnotificationslist allNotificationsList ����
�� 
dnot� o  ������ 40 enablednotificationslist enabledNotificationsList� �����
�� 
iapp� m  ���� ���  S k y p e . a p p��  ��  K 5  �������
�� 
capp� m  ���� ��� 0 c o m . G r o w l . G r o w l H e l p e r A p p
�� kfrmID  ��  ��  ��  ��  F ��� l     ��������  ��  ��  � ��� i     ��� I      ������� 0 growlnotify growlNotify� ��� o      ���� 0 	growltype 	growlType� ��� o      ���� 0 
growltitle 
growlTitle� ���� o      ���� $0 growldescription growlDescription��  ��  � Z     ������� o     ����  0 growlisrunning growlIsRunning� O    ��� I   �����
�� .notifygrnull��� ��� null��  � ����
�� 
name� o    ���� 0 	growltype 	growlType� ����
�� 
titl� o    ���� 0 
growltitle 
growlTitle� ����
�� 
desc� o    ���� $0 growldescription growlDescription� �����
�� 
appl� o    ���� 0 
scriptname 
scriptName��  � 5    	�����
�� 
capp� m    �� ��� 0 c o m . G r o w l . G r o w l H e l p e r A p p
�� kfrmID  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 	splittext 	splitText� ��� o      ���� 0 	delimiter  � ���� o      ���� 0 sometext someText��  ��  � k     �� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 prevtids prevTIDs� ��� r    ��� o    ���� 0 	delimiter  � n     ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    ��� 2   ��
�� 
citm� o    ���� 0 sometext someText� o      �� 
0 output  � ��� r    ��� o    �~�~ 0 prevtids prevTIDs� n     ��� 1    �}
�} 
txdl� 1    �|
�| 
ascr� ��{� L    �� o    �z�z 
0 output  �{  � ��y� l     �x�w�v�x  �w  �v  �y       �u�����u  � �t�s�r�t 0 growlnotify growlNotify�s 0 	splittext 	splitText
�r .aevtoappnull  �   � ****� �q��p�o���n�q 0 growlnotify growlNotify�p �m��m �  �l�k�j�l 0 	growltype 	growlType�k 0 
growltitle 
growlTitle�j $0 growldescription growlDescription�o  � �i�h�g�i 0 	growltype 	growlType�h 0 
growltitle 
growlTitle�g $0 growldescription growlDescription� �f�e��d�c�b�a�`�_�^�]�f  0 growlisrunning growlIsRunning
�e 
capp
�d kfrmID  
�c 
name
�b 
titl
�a 
desc
�` 
appl�_ 0 
scriptname 
scriptName�^ 
�] .notifygrnull��� ��� null�n � )���0 *������ 
UY h� �\��[�Z���Y�\ 0 	splittext 	splitText�[ �X��X �  �W�V�W 0 	delimiter  �V 0 sometext someText�Z  � �U�T�S�R�U 0 	delimiter  �T 0 sometext someText�S 0 prevtids prevTIDs�R 
0 output  � �Q�P�O
�Q 
ascr
�P 
txdl
�O 
citm�Y ��,E�O���,FO��-E�O���,FO�� �N��M�L���K
�N .aevtoappnull  �   � ****� k    ��  +��  2��  H��  ]��  ���  ��� E�J�J  �M  �L  �  � _ 0�I�H�G�F�E�D ?�C Z�B��A X�@�? }�> p�=�<�;�: z�9 ��8�7�6 � � ��5 � � � � � ��4�3) �2$�15:�0V�/du�.��������������-*27?�,��+Y\�*mp�)�(�'�&�%��$�#�I 0 
scriptname 
scriptName
�H afdrasup
�G 
from
�F fldmfldu
�E .earsffdralis        afdr
�D 
psxp�C ,0 pollerscriptfilepath pollerScriptFilepath
�B 
prcs�  
�A 
bnid
�@ .corecnte****       ****�?  0 growlisrunning growlIsRunning
�> 
cmnd
�= 
scrp�< 
�; .sendskypnull��� ��� null�:  0 statusoriginal statusOriginal�9 	0 calls  �8 0 	splittext 	splitText
�7 
cobj�6 0 callid callId�5 0 
callstatus 
callStatus�4 0 growlnotify growlNotify�3 0 launched  
�2 
strq
�1 .sysoexecTEXT���     TEXT�0 0 ongrowlnotify onGrowlNotify�/ (0 mutestatusoriginal muteStatusOriginal�. 0 mutestatusnew muteStatusNew
�- 
bool
�, 
capp
�+ kfrmID  �* ,0 allnotificationslist allNotificationsList�) 40 enablednotificationslist enabledNotificationsList
�( 
appl
�' 
anot
�& 
dnot
�% 
iapp�$ 
�# .registernull��� ��� null�K�E�O���l �,�%E�O� *�-�[�,\Z�81j jE�UOa  -*a a a �a  E` O*a a a �a  E` UO*a _ l+ a l/E` O_ a �a  *a a _ %a %a �a  E`  UO_  a !_ %a "%  �a  ?*a a #_ %a $%a �a  O*a a %a �a  O*a a &a �a  UO*a '�a (m+ )OfE` *Oa + a ,�a -,%a .%j /OeE` *UO_ *e  *a 0�a 1m+ 2Y hOPY �a  *a a 3a �a  E` 4UO_ 4a 5  3a  )*a a 6a �a  O*a a 7a �a  E` 8UY >_ 4a 9  3a  )*a a :a �a  O*a a ;a �a  E` 8UY hO_ 8_ 4 ,_ 8a <  *a =�a >m+ )Y *a ?�a @m+ )OPY *a A�a Bm+ )OPY �_ a C  �_ a D 
 _ a E a F&
 _ a G a F& **a H�a Im+ )Oa  *a a Ja �a  UY hO_ a K  **a L�a Mm+ )Oa  *a a Na �a  UY hY hO� K)a Oa Pa Q0 9a Ra SlvE` TOa Ua VlvE` WO*a X�a Y_ Ta Z_ Wa [a \a ] ^UY h ascr  ��ޭ