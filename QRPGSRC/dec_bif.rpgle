     DDate1            S               D
     DNum              S             10S 0
     DString           S             10A   Inz('1234567.89')
     DOutput           S             10S 2
     C                   Eval      Date1=%Date()
     C                   Eval      Num=%Dec(Date1:*MDY)
     C     Num           Dsply
     C                   Eval      Output=%Dec(String:10:2)
     C     Output        Dsply
     C                   Eval      Output=%Dec(%Char(Date1:*USA0):8:0)
     C     Output        Dsply
     C                   Eval      *Inlr=*On
