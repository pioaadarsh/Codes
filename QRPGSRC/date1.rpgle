     DDate1            S               D
     DResult           S               D   datfmt(*usa)
     DResult1          S              8
     C                   Eval      Date1=%date()
     c                   Eval      Result1= %char(Date1:*usa0)
     C                   Eval      Result= %date(result1:*usa0)
     C     result        Dsply
     C                   Eval      *Inlr=*On
