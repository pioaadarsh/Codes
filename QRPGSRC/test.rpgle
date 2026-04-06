     **DateField       S               D   Datfmt(*ISO)
     D Date1           S              6P 0 Inz(111014)
     D Date3           S              8P 0 Inz(20201014)
     D Time            S              8A   Inz('11.55.12')
     D Date2           S              8A   Inz('20201014')
     D Tstmp           S             20    Inz('1999070214085683400')
     D Tstmp1          S             20    Inz('1999150214085683400')

     C     *ISO0         Test(D E)               Date2
     C                   If        %Error()
     C     'Invld Date'  Dsply
     C                   EndIf
     C     *ISO          Test(D E)               Date3
     C                   If        %Error()
     C     'Invld Date'  Dsply
     C                   EndIf
     C     *Mdy          Test(D E)               Date1
     C                   If        %Error
     C     'Invalid Date'Dsply
     C                   EndIf

     **    *Usa          Test(E T)               Time
     **                  If        %Error
     **    'Invalid Time'Dsply
     **                  EndIf
     C     *ISO          Test(E T)               Time
     C                   If        %Error
     C     'Invalid Time'Dsply
     C                   EndIf
     C     *Iso0         Test(Z E)               Tstmp1
     C                   If        %Error
     C     'Invalid Tstp'Dsply
     C                   EndIf
     C                   Eval      *Inlr=*On
