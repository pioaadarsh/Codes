     DUpper            C                   'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
     DLower            C                   'abcdefghijklmnopqrstuvwxyz'
     DString           S             15A   Inz('aadarsh ajmera')
     DResult           S             15A
     DPos              S              2S 0 inz(17)
     **
     C     Lower:Upper   Xlate(E)  String:Pos    Result
     C                   If        %Error
     C     'Error'       Dsply
     C                   Endif
     **
     C                   Eval      *Inlr=*On
