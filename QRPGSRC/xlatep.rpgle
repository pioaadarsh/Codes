     DLower            C                   'abcdefghijklmnopqrstuvwxyz'
     DUpper            C                   'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
     DString1          S             15A   inz('TRANSLATE IT ')
     DResult           S             20A   inz('yyyyyyyyyyyyyyyyxxxx')
     C
     C     Upper:Lower   Xlate     String1       Result
     C     Result        Dsply
     C                   Clear                   Result
     C     Upper:Lower   Xlate(p)  String1       Result
     C     Result        Dsply
     C                   Eval      *Inlr=*On
