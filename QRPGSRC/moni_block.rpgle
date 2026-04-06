     DDist             S              2S 0
     DTime             S              1S 0
     DSpeed            S              2S 0
     C                   Monitor
     C                   Eval      Dist=6
     C                   Eval      Time=0
     C                   Eval      Speed=Dist/Time
     C                   On-Error
     C     'Error Date'  Dsply
     C                   Endmon
     C                   Eval      *Inlr=*On
     C     *PSSR         Begsr
     C     'Data Error'  Dsply
     C                   Return
     C                   Endsr
