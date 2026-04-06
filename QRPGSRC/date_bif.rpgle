     DDate1            S               D
     DDate2            S               D
     DNum              S             10S 0
     C                   Eval      Date1=%Date()
     C     Date1         Dsply
     C                   Eval      Date2=Date1-%Days(2)
     C                   Eval      Date2=Date1-%Months(5)
     C                   Eval      Date2=Date1-%Years(4)
     C     Date2         Dsply
     C                   Eval      *Inlr=*On
