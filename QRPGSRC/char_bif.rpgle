     DDate1            S               D
     DNum              S             10S 0 Inz(10123)
     DOutput           S             10A
     C                   Eval      Date1=%Date()
     C                   Eval      Output=%Char(Num)
     C     Output        Dsply
     C                   Eval      Output=%Char(Date1:*USA)
     C     Output        Dsply
     C                   Eval      *Inlr=*On
