     DDate1            S               D   Inz(D'2025-12-14')
     DDate2            S               D   Inz(D'2024-11-13')
     DTime1            S               T   Inz(T'14.54.34')
     DTime2            S               T   Inz(T'08.15.25')
     DDate_Diff        S              5P 0
     DTime_Diff        S              6P 0
     C                   Eval      Date_Diff=%Diff(Date1:Date2:*D)
     C     Date_Diff     Dsply
     C                   Eval      Date_Diff=%Diff(Date1:Date2:*M)
     C     Date_Diff     Dsply
     C                   Eval      Time_Diff=%Diff(Time1:Time2:*H)
     C     Time_Diff     Dsply
     C                   Eval      Time_Diff=%Diff(Time1:Time2:*S)
     C     Time_Diff     Dsply
     C                   Eval      *Inlr=*On
