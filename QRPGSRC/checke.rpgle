     DString           S              7A   inz('aadarsh')
     DPosition         S              2S 0
     DIndex            S              2S 0 inz(10)
     **
     C     'aada'        Check     String        Position
     C     Position      Dsply
     C                   Clear                   Position
     **
     C     'aada '       Check(E)  String:Index  Position
     C                   If        %error
     C     'error'       Dsply
     C                   Endif
     **
     C                   Eval      *Inlr=*On
