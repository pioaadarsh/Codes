     DString           S             20A   Inz('Aadarsh Ajmera')
     DPos              S              2S 0
     C                   Eval      Pos=%Scan(' ':String)
     C     Pos           Dsply
     C                   Eval      String=%Scanrpl('Ajmera':'Jain':String)
     C     String        Dsply
     C                   Eval      *Inlr=*On
