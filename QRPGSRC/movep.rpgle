     DString1          S              5A
     DString2          S             10A
     C                   Eval      String1 = 'AAAAA'
     C                   Eval      String2 = 'BBBBBBBBBB'
     C                   Move      String1       String2
     C     String2       Dsply
     C                   Reset                   String2
     C                   EvalR     String2=String1
     **                  Move(P)   String1       String2
     C     String2       Dsply
     C                   Eval      *Inlr=*On
