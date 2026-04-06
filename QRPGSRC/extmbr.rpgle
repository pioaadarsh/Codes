     FRPF1      IF   E             Disk    Extmbr(Member) usropn
     DMember           S             10A
     DArray            S             10A   DIM(2)
     Di                S              1P 0
     C                   Eval      Array(1)='MEM2'
     C                   Eval      Array(2)='RPF1'
     C                   Eval      i=1
     C                   Dow       i<=%ELEM(Array)
     C                   Eval      Member=Array(i)
     C                   Open      RPF1
     C     *start        Setll     RPF1
     C                   Read      RPF1
     C                   Dow       not %Eof()
     C     STU_NAME      Dsply
     C                   Read      RPF1
     C                   Enddo
     C                   Eval      i=i+1
     C                   Close     RPF1
     C                   Enddo
     C                   Eval      *inlr=*on
