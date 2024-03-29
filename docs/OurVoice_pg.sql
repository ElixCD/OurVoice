--
-- Generated from mysql2pgsql.perl
-- http://gborg.postgresql.org/project/mysql2psql/
-- (c) 2001 - 2007 Jose M. Duarte, Joseph Speigle
--

-- warnings are printed for drop tables if they do not exist
-- please see http://archives.postgresql.org/pgsql-novice/2004-10/msg00158.php

-- ##############################################################
\xFF\xFE- -   M a r i a D B   d u m p   1 0 . 1 7     D i s t r i b   1 0 . 4 . 8 - M a r i a D B ,   f o r   W i n 6 4   ( A M D 6 4 )  
 - -  
 - -   H o s t :   l o c a l h o s t         D a t a b a s e :   O u r V o i c e  
 - -   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 - -   S e r v e r   v e r s i o n 	 1 0 . 4 . 8 - M a r i a D B  
  
 / * ! 4 0 1 0 1   S E T   @ O L D _ C H A R A C T E R _ S E T _ C L I E N T = @ @ C H A R A C T E R _ S E T _ C L I E N T   * / ;  
 / * ! 4 0 1 0 1   S E T   @ O L D _ C H A R A C T E R _ S E T _ R E S U L T S = @ @ C H A R A C T E R _ S E T _ R E S U L T S   * / ;  
 / * ! 4 0 1 0 1   S E T   @ O L D _ C O L L A T I O N _ C O N N E C T I O N = @ @ C O L L A T I O N _ C O N N E C T I O N   * / ;  
 / * ! 4 0 1 0 1   S E T   N A M E S   u t f 8 m b 4   * / ;  
 / * ! 4 0 1 0 3   S E T   @ O L D _ T I M E _ Z O N E = @ @ T I M E _ Z O N E   * / ;  
 / * ! 4 0 1 0 3   S E T   T I M E _ Z O N E = ' + 0 0 : 0 0 '   * / ;  
 / * ! 4 0 0 1 4   S E T   @ O L D _ U N I Q U E _ C H E C K S = @ @ U N I Q U E _ C H E C K S ,   U N I Q U E _ C H E C K S = 0   * / ;  
 / * ! 4 0 0 1 4   S E T   @ O L D _ F O R E I G N _ K E Y _ C H E C K S = @ @ F O R E I G N _ K E Y _ C H E C K S ,   F O R E I G N _ K E Y _ C H E C K S = 0   * / ;  
 / * ! 4 0 1 0 1   S E T   @ O L D _ S Q L _ M O D E = @ @ S Q L _ M O D E ,   S Q L _ M O D E = ' N O _ A U T O _ V A L U E _ O N _ Z E R O '   * / ;  
 / * ! 4 0 1 1 1   S E T   @ O L D _ S Q L _ N O T E S = @ @ S Q L _ N O T E S ,   S Q L _ N O T E S = 0   * / ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    f a c t o r s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    f a c t o r s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    f a c t o r s    (  
      i d f a c t o r    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      d e s c r i p t i o n    v a r c h a r ( 4 5 )   D E F A U L T   N U L L ,  
      u s e r s _ i d u s e r    i n t ( 1 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d f a c t o r  ) ,  
     K E Y    f k _ f a c t o r _ u s e r s 1 _ i d x    (  u s e r s _ i d u s e r  ) ,  
     C O N S T R A I N T    f k _ f a c t o r _ u s e r s 1    F O R E I G N   K E Y   (  u s e r s _ i d u s e r  )   R E F E R E N C E S    u s e r s    (  i d u s e r  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 1 2   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    f a c t o r s   
 - -  
  
 L O C K   T A B L E S    f a c t o r s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    f a c t o r s    D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O    f a c t o r s    V A L U E S   ( 1 , ' S i   /   N o ' , 1 ) , ( 8 , ' O p c i o n e s ' , 1 ) , ( 9 , ' f a c t o r   p r u e b a ' , 1 ) , ( 1 0 , ' c h   c h ' , 1 ) , ( 1 1 , ' y y ' , 1 ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    f a c t o r s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    m o d u l e _ a c c e s s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    m o d u l e _ a c c e s s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    m o d u l e _ a c c e s s    (  
      i d m o d u l e _ a c c e s s    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      r o l e s _ i d r o l    i n t ( 1 1 )   N O T   N U L L ,  
      m o d u l e s _ i d m o d u l e    i n t ( 1 1 )   N O T   N U L L ,  
      p e r m i s s i o n s _ i d p e r m i s s i o n    i n t ( 1 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d m o d u l e _ a c c e s s  ) ,  
     K E Y    f k _ m o d u l e _ a c c e s s _ m o d u l e s 1 _ i d x    (  m o d u l e s _ i d m o d u l e  ) ,  
     K E Y    f k _ m o d u l e _ a c c e s s _ p e r m i s s i o n s 1 _ i d x    (  p e r m i s s i o n s _ i d p e r m i s s i o n  ) ,  
     K E Y    f k _ m o d u l e _ a c c e s s _ u s e r _ t y p e s 1 _ i d x    (  r o l e s _ i d r o l  )   U S I N G   B T R E E ,  
     C O N S T R A I N T    f k _ m o d u l e _ a c c e s s _ m o d u l e s 1    F O R E I G N   K E Y   (  m o d u l e s _ i d m o d u l e  )   R E F E R E N C E S    m o d u l e s    (  i d m o d u l e  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ,  
     C O N S T R A I N T    f k _ m o d u l e _ a c c e s s _ p e r m i s s i o n s 1    F O R E I G N   K E Y   (  p e r m i s s i o n s _ i d p e r m i s s i o n  )   R E F E R E N C E S    p e r m i s s i o n s    (  i d p e r m i s s i o n  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ,  
     C O N S T R A I N T    f k _ m o d u l e _ a c c e s s _ r o l e s 1    F O R E I G N   K E Y   (  r o l e s _ i d r o l  )   R E F E R E N C E S    r o l e s    (  i d r o l  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 1 2   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    m o d u l e _ a c c e s s   
 - -  
  
 L O C K   T A B L E S    m o d u l e _ a c c e s s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    m o d u l e _ a c c e s s    D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O    m o d u l e _ a c c e s s    V A L U E S   ( 1 , 1 , 1 , 3 ) , ( 2 , 1 , 2 , 3 ) , ( 3 , 1 , 3 , 3 ) , ( 4 , 1 , 4 , 3 ) , ( 5 , 2 , 1 , 3 ) , ( 6 , 2 , 2 , 3 ) , ( 7 , 2 , 3 , 3 ) , ( 8 , 2 , 4 , 3 ) , ( 9 , 3 , 4 , 3 ) , ( 1 0 , 3 , 5 , 1 ) , ( 1 1 , 3 , 6 , 1 ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    m o d u l e _ a c c e s s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    m o d u l e s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    m o d u l e s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    m o d u l e s    (  
      i d m o d u l e    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      n a m e    v a r c h a r ( 4 5 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d m o d u l e  )  
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 7   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    m o d u l e s   
 - -  
  
 L O C K   T A B L E S    m o d u l e s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    m o d u l e s    D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O    m o d u l e s    V A L U E S   ( 1 , ' f a c t o r s ' ) , ( 2 , ' s u r v e y s ' ) , ( 3 , ' u s e r s ' ) , ( 4 , ' a c c o u n t ' ) , ( 5 , ' p e n d i e n t ' ) , ( 6 , ' s o l v e d ' ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    m o d u l e s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    p e r m i s s i o n s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    p e r m i s s i o n s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    p e r m i s s i o n s    (  
      i d p e r m i s s i o n    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      d e s c r i p t i o n    v a r c h a r ( 4 5 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d p e r m i s s i o n  )  
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 4   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    p e r m i s s i o n s   
 - -  
  
 L O C K   T A B L E S    p e r m i s s i o n s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    p e r m i s s i o n s    D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O    p e r m i s s i o n s    V A L U E S   ( 1 , ' R e a d ' ) , ( 2 , ' W r i t e ' ) , ( 3 , ' A l l ' ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    p e r m i s s i o n s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    q u e s t i o n s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    q u e s t i o n s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    q u e s t i o n s    (  
      i d q u e s t i o n    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      v a l u e    v a r c h a r ( 4 5 )   N O T   N U L L ,  
      m a n d a t o r y    b i n a r y ( 1 )   N O T   N U L L ,  
      f a c t o r s _ i d f a c t o r    i n t ( 1 1 )   N O T   N U L L ,  
      s u r v e y s _ i d s u r v e y    i n t ( 1 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d q u e s t i o n  ) ,  
     K E Y    f k _ q u e s t i o n s _ f a c t o r 1 _ i d x    (  f a c t o r s _ i d f a c t o r  ) ,  
     K E Y    f k _ q u e s t i o n s _ s u r v e y 1 _ i d x    (  s u r v e y s _ i d s u r v e y  ) ,  
     C O N S T R A I N T    f k _ q u e s t i o n s _ f a c t o r 1    F O R E I G N   K E Y   (  f a c t o r s _ i d f a c t o r  )   R E F E R E N C E S    f a c t o r s    (  i d f a c t o r  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ,  
     C O N S T R A I N T    f k _ q u e s t i o n s _ s u r v e y 1    F O R E I G N   K E Y   (  s u r v e y s _ i d s u r v e y  )   R E F E R E N C E S    s u r v e y s    (  i d s u r v e y  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 9   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    q u e s t i o n s   
 - -  
  
 L O C K   T A B L E S    q u e s t i o n s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    q u e s t i o n s    D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O    q u e s t i o n s    V A L U E S   ( 1 , ' Q u e s t i o n   1 ' , 0 x 3 1 , 1 , 1 ) , ( 2 , ' Q u e s t i o n   2 ' , 0 x 3 1 , 8 , 1 ) , ( 4 , ' M a n d a t o r y   Q u e s t i o n ' , 0 x 3 1 , 9 , 3 ) , ( 7 , ' Q u e s t i o n   1 ' , 0 x 3 1 , 1 , 4 ) , ( 8 , ' s d f g ' , 0 x 3 0 , 8 , 4 ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    q u e s t i o n s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    r e s p o n s e s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    r e s p o n s e s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    r e s p o n s e s    (  
      i d r e s p o n s e    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      r e s p o n s e    i n t ( 1 1 )   N O T   N U L L ,  
      q u e s t i o n s _ i d q u e s t i o n    i n t ( 1 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d r e s p o n s e  ) ,  
     K E Y    f k _ r e s p o n s e _ q u e s t i o n s 1 _ i d x    (  q u e s t i o n s _ i d q u e s t i o n  ) ,  
     C O N S T R A I N T    f k _ r e s p o n s e _ q u e s t i o n s 1    F O R E I G N   K E Y   (  q u e s t i o n s _ i d q u e s t i o n  )   R E F E R E N C E S    q u e s t i o n s    (  i d q u e s t i o n  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    r e s p o n s e s   
 - -  
  
 L O C K   T A B L E S    r e s p o n s e s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    r e s p o n s e s    D I S A B L E   K E Y S   * / ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    r e s p o n s e s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    r o l e s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    r o l e s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    r o l e s    (  
      i d r o l    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      d e s c r i p t i o n    v a r c h a r ( 4 5 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d r o l  )  
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 4   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    r o l e s   
 - -  
  
 L O C K   T A B L E S    r o l e s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    r o l e s    D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O    r o l e s    V A L U E S   ( 1 , ' S u p e r ' ) , ( 2 , ' A d m i n ' ) , ( 3 , ' U s e r ' ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    r o l e s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    r u b r i c s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    r u b r i c s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    r u b r i c s    (  
      i d r u b r i c    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      d e s c r i p t i o n    v a r c h a r ( 4 5 )   N O T   N U L L ,  
      v a l u e    i n t ( 1 1 )   N O T   N U L L ,  
      f a c t o r s _ i d f a c t o r    i n t ( 1 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d r u b r i c  ) ,  
     K E Y    f k _ r u b r i c _ f a c t o r 1 _ i d x    (  f a c t o r s _ i d f a c t o r  ) ,  
     C O N S T R A I N T    f k _ r u b r i c _ f a c t o r 1    F O R E I G N   K E Y   (  f a c t o r s _ i d f a c t o r  )   R E F E R E N C E S    f a c t o r s    (  i d f a c t o r  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 1 1   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    r u b r i c s   
 - -  
  
 L O C K   T A B L E S    r u b r i c s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    r u b r i c s    D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O    r u b r i c s    V A L U E S   ( 1 , ' S i ' , 1 , 1 ) , ( 2 , ' N o ' , 0 , 1 ) , ( 3 , ' O p c   1 ' , 1 , 8 ) , ( 4 , ' O p c   2 ' , 2 , 8 ) , ( 5 , ' O p c   3 ' , 3 , 8 ) , ( 6 , ' r 1 2 ' , 1 , 9 ) , ( 1 0 , ' r 2 ' , 0 , 1 1 ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    r u b r i c s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    s u r v e y s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    s u r v e y s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    s u r v e y s    (  
      i d s u r v e y    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      n a m e    v a r c h a r ( 4 5 )   N O T   N U L L ,  
      a c t i v e    b i n a r y ( 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d s u r v e y  )  
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 5   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    s u r v e y s   
 - -  
  
 L O C K   T A B L E S    s u r v e y s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    s u r v e y s    D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O    s u r v e y s    V A L U E S   ( 1 , ' P r u e b a   1 ' , 0 x 3 1 ) , ( 2 , ' P r u e b a   2 ' , 0 x 3 1 ) , ( 3 , ' e n c u e s t a   p a r a   e l i m i n a r   m a s   a d e l a n t e ' , 0 x 3 1 ) , ( 4 , ' p a   b o r r a r   o t r o ' , 0 x 3 1 ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    s u r v e y s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    u s e r _ r e l a t i o n s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    u s e r _ r e l a t i o n s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    u s e r _ r e l a t i o n s    (  
      i d u s e r _ r e l a t i o n s    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      u s e r s _ i d u s e r _ a d m i n    i n t ( 1 1 )   N O T   N U L L ,  
      u s e r s _ i d u s e r _ u s e r    i n t ( 1 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d u s e r _ r e l a t i o n s  ) ,  
     K E Y    f k _ u s e r _ r e l a t i o n s _ u s e r s 1 _ i d x    (  u s e r s _ i d u s e r _ a d m i n  ) ,  
     K E Y    f k _ u s e r _ r e l a t i o n s _ u s e r s 2 _ i d x    (  u s e r s _ i d u s e r _ u s e r  ) ,  
     C O N S T R A I N T    f k _ u s e r _ r e l a t i o n s _ u s e r s _ a d m i n    F O R E I G N   K E Y   (  u s e r s _ i d u s e r _ a d m i n  )   R E F E R E N C E S    u s e r s    (  i d u s e r  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ,  
     C O N S T R A I N T    f k _ u s e r _ r e l a t i o n s _ u s e r s _ u s e r    F O R E I G N   K E Y   (  u s e r s _ i d u s e r _ u s e r  )   R E F E R E N C E S    u s e r s    (  i d u s e r  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 4   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    u s e r _ r e l a t i o n s   
 - -  
  
 L O C K   T A B L E S    u s e r _ r e l a t i o n s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    u s e r _ r e l a t i o n s    D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O    u s e r _ r e l a t i o n s    V A L U E S   ( 1 , 1 , 2 ) , ( 2 , 2 , 3 ) , ( 3 , 2 , 1 4 ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    u s e r _ r e l a t i o n s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    u s e r _ r o l e s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    u s e r _ r o l e s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    u s e r _ r o l e s    (  
      i d u s e r _ r o l    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      u s e r s _ i d u s e r    i n t ( 1 1 )   N O T   N U L L ,  
      r o l e s _ i d r o l    i n t ( 1 1 )   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d u s e r _ r o l  ) ,  
     K E Y    f k _ u s e r _ r o l _ u s e r s 1 _ i d x    (  u s e r s _ i d u s e r  ) ,  
     K E Y    f k _ u s e r _ r o l _ r o l e s 1 _ i d x    (  r o l e s _ i d r o l  ) ,  
     C O N S T R A I N T    f k _ u s e r _ r o l _ r o l e s 1    F O R E I G N   K E Y   (  r o l e s _ i d r o l  )   R E F E R E N C E S    r o l e s    (  i d r o l  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ,  
     C O N S T R A I N T    f k _ u s e r _ r o l _ u s e r s 1    F O R E I G N   K E Y   (  u s e r s _ i d u s e r  )   R E F E R E N C E S    u s e r s    (  i d u s e r  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 2 1   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    u s e r _ r o l e s   
 - -  
  
 L O C K   T A B L E S    u s e r _ r o l e s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    u s e r _ r o l e s    D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O    u s e r _ r o l e s    V A L U E S   ( 1 , 1 , 1 ) , ( 2 , 2 , 2 ) , ( 5 , 3 , 3 ) , ( 2 0 , 1 4 , 3 ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    u s e r _ r o l e s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    u s e r _ s u r v e y s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    u s e r _ s u r v e y s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    u s e r _ s u r v e y s    (  
      i d u s e r _ s u r v e y    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      u s e r s _ i d u s e r    i n t ( 1 1 )   N O T   N U L L ,  
      s u r v e y s _ i d s u r v e y    i n t ( 1 1 )   N O T   N U L L ,  
      p r o p i e t a r y    b i n a r y ( 1 )   N O T   N U L L ,  
      c o m p l e t e    b i n a r y ( 1 )   N O T   N U L L ,  
      s t a r t _ d a t e    d a t e t i m e   D E F A U L T   N U L L ,  
      f i n i s h _ d a t e    d a t e t i m e   D E F A U L T   N U L L ,  
     P R I M A R Y   K E Y   (  i d u s e r _ s u r v e y  ) ,  
     K E Y    f k _ u s e r _ s u r v e y _ u s e r s 1 _ i d x    (  u s e r s _ i d u s e r  ) ,  
     K E Y    f k _ u s e r _ s u r v e y _ s u r v e y 1 _ i d x    (  s u r v e y s _ i d s u r v e y  ) ,  
     C O N S T R A I N T    f k _ u s e r _ s u r v e y _ s u r v e y 1    F O R E I G N   K E Y   (  s u r v e y s _ i d s u r v e y  )   R E F E R E N C E S    s u r v e y s    (  i d s u r v e y  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N ,  
     C O N S T R A I N T    f k _ u s e r _ s u r v e y _ u s e r s 1    F O R E I G N   K E Y   (  u s e r s _ i d u s e r  )   R E F E R E N C E S    u s e r s    (  i d u s e r  )   O N   D E L E T E   N O   A C T I O N   O N   U P D A T E   N O   A C T I O N  
 )   E N G I N E = I n n o D B   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    u s e r _ s u r v e y s   
 - -  
  
 L O C K   T A B L E S    u s e r _ s u r v e y s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    u s e r _ s u r v e y s    D I S A B L E   K E Y S   * / ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    u s e r _ s u r v e y s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
  
 - -  
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e    u s e r s   
 - -  
  
 D R O P   T A B L E   I F   E X I S T S    u s e r s  ;  
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8   * / ;  
 C R E A T E   T A B L E    u s e r s    (  
      i d u s e r    i n t ( 1 1 )   N O T   N U L L   A U T O _ I N C R E M E N T ,  
      e m a i l    v a r c h a r ( 4 5 )   N O T   N U L L ,  
      n a m e    v a r c h a r ( 4 5 )   N O T   N U L L ,  
      p a s s w o r d    v a r c h a r ( 2 5 5 )   N O T   N U L L ,  
      a c t i v e    b i n a r y ( 1 )   N O T   N U L L ,  
      l a s t _ l o g i n    d a t e t i m e   D E F A U L T   N U L L ,  
      r e g i s t e r _ d a t e    d a t e t i m e   N O T   N U L L ,  
     P R I M A R Y   K E Y   (  i d u s e r  )  
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 1 5   D E F A U L T   C H A R S E T = u t f 8 ;  
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ;  
  
 - -  
 - -   D u m p i n g   d a t a   f o r   t a b l e    u s e r s   
 - -  
  
 L O C K   T A B L E S    u s e r s    W R I T E ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    u s e r s    D I S A B L E   K E Y S   * / ;  
 I N S E R T   I N T O    u s e r s    V A L U E S   ( 1 , ' s u p e r @ l o c a l . c o m ' , ' s u p e r ' , ' $ 2 y $ 1 0 $ s R 9 b S d 2 p 1 A W t H u 9 F u m E 6 7 O 3 3 y z u c H J . W H e y L Y s B R 1 N S t x F 0 g T m R 1 W ' , 0 x 3 1 , ' 2 0 2 1 - 1 2 - 1 7   1 9 : 4 8 : 2 0 ' , ' 2 0 2 1 - 0 6 - 1 1   0 9 : 2 7 : 0 9 ' ) , ( 2 , ' a d m i n @ l o c a l . c o m ' , ' a d m i n ' , ' $ 2 y $ 1 0 $ U c 2 l o g J h q G F 1 L O G / F e v Q 9 e L U b B J b 2 3 y 9 N d C E H v e v . k M e c d x . k u A 2 a ' , 0 x 3 1 , ' 2 0 2 1 - 1 2 - 1 8   0 3 : 1 6 : 2 6 ' , ' 2 0 2 1 - 0 6 - 1 1   0 9 : 2 7 : 0 9 ' ) , ( 3 , ' e l i x . c d @ g m a i l . c o m ' , ' E l i x   F r o y l %\xED n ' , ' $ 2 y $ 1 0 $ b A 6 1 f Q 7 B 4 k 2 6 b V Y I v R z C / O 1 S 1 k N N q F D C G p H 8 x s J A W t o c 7 P f Y 0 1 I y K ' , 0 x 3 1 , ' 2 0 2 1 - 1 2 - 1 7   1 9 : 1 9 : 1 4 ' , ' 2 0 2 1 - 1 2 - 1 3   0 5 : 3 4 : 1 0 ' ) , ( 1 4 , ' e l e m e n t o r x @ r o c k e t m a i l . c o m ' , ' e l e m e n t o r ' , ' ' , 0 x 3 1 , N U L L , ' 2 0 2 1 - 1 2 - 1 6   1 9 : 5 3 : 5 6 ' ) ;  
 / * ! 4 0 0 0 0   A L T E R   T A B L E    u s e r s    E N A B L E   K E Y S   * / ;  
 U N L O C K   T A B L E S ;  
 / * ! 4 0 1 0 3   S E T   T I M E _ Z O N E = @ O L D _ T I M E _ Z O N E   * / ;  
  
 / * ! 4 0 1 0 1   S E T   S Q L _ M O D E = @ O L D _ S Q L _ M O D E   * / ;  
 / * ! 4 0 0 1 4   S E T   F O R E I G N _ K E Y _ C H E C K S = @ O L D _ F O R E I G N _ K E Y _ C H E C K S   * / ;  
 / * ! 4 0 0 1 4   S E T   U N I Q U E _ C H E C K S = @ O L D _ U N I Q U E _ C H E C K S   * / ;  
 / * ! 4 0 1 0 1   S E T   C H A R A C T E R _ S E T _ C L I E N T = @ O L D _ C H A R A C T E R _ S E T _ C L I E N T   * / ;  
 / * ! 4 0 1 0 1   S E T   C H A R A C T E R _ S E T _ R E S U L T S = @ O L D _ C H A R A C T E R _ S E T _ R E S U L T S   * / ;  
 / * ! 4 0 1 0 1   S E T   C O L L A T I O N _ C O N N E C T I O N = @ O L D _ C O L L A T I O N _ C O N N E C T I O N   * / ;  
 / * ! 4 0 1 1 1   S E T   S Q L _ N O T E S = @ O L D _ S Q L _ N O T E S   * / ;  
  
 - -   D u m p   c o m p l e t e d   o n   2 0 2 2 - 0 1 - 0 7   1 5 : 5 9 : 3 8  
 