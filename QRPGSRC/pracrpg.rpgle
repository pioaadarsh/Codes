     **This is a File Declaration Section
     FPracPf    if   e           k disk
     **
     **This is a Variable Declaration Section
     DDisName          s             20a
     DDisRollNo        s              5s 0
     **
     ** This is a Calculation Section
     C     'Answer-1'    Dsply
     C     *Hival        SetGT     PracPf
     C                   Read      PracPfR
     C                   Eval      DisName=Name
     C     DisName       Dsply
     **
     C     'Answer-2'    Dsply
     C                   Eval      RollNo=3
     C     ROllNo        SetGT     PracPf
     C                   Read      PracPfR
     C                   Eval      DisName=Name
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Answer-3'    Dsply
     C                   Eval      RollNo=3
     C     ROllNo        SetGT     PracPf
     C     RollNo        ReadE     PracPfR
     C                   Eval      DisName=Name
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Answer-4'    Dsply
     C                   Eval      RollNo=3
     C     ROllNo        SetGT     PracPf
     C     RollNo        ReadPE    PracPfR
     C                   Eval      DisName=Name
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Answer-5'    Dsply
     C                   Eval      RollNo=3
     C     ROllNo        SetGT     PracPf
     C                   ReadP     PracPfR
     C                   Eval      DisName=Name
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Answer-6'    Dsply
     C                   Eval      RollNo=2
     C     ROllNo        SetGT     PracPf
     C                   ReadP     PracPfR
     C                   Eval      DisName=Name
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C                   clear                   DisRollNo
     C                   clear                   RollNo
     C     'Answer-7'    Dsply
     C                   Eval      RollNo=6
     C     ROllNo        SetGT     PracPf
     C                   ReadP     PracPfR
     C                   Eval      DisName=Name
     C                   Eval      DisRollNo=RollNo
     C     DisRollNo     Dsply
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C                   clear                   DisRollNo
     C                   clear                   RollNo
     C     'part-2'      Dsply
     C     'Answer-1'    Dsply
     C     *Hival        SetLL     PracPf
     C                   Read      PracPfR
     C                   Eval      DisName=Name
     C                   Eval      DisRollNo=RollNo
     C     DisRollNo     Dsply
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C                   clear                   DisRollNo
     C                   clear                   RollNo
     C     'Answer-2'    Dsply
     C                   Eval      RollNo=3
     C     RollNo        SetLL     PracPf
     C                   Read      PracPfR
     C                   Eval      DisName=Name
     C                   Eval      DisRollNo=RollNo
     C     DisRollNo     Dsply
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Answer-3'    Dsply
     C                   Eval      RollNo=3
     C     ROllNo        SetLL     PracPf
     C     RollNo        ReadE     PracPfR
     C                   Eval      DisName=Name
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Answer-4'    Dsply
     C                   Eval      RollNo=3
     C     ROllNo        SetLL     PracPf
     C     RollNo        ReadPE    PracPfR
     C                   Eval      DisName=Name
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Answer-5'    Dsply
     C                   Eval      RollNo=3
     C     ROllNo        SetLL     PracPf
     C                   ReadP     PracPfR
     C                   Eval      DisName=Name
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Answer-6'    Dsply
     C                   Eval      RollNo=2
     C     ROllNo        SetLL     PracPf
     C                   ReadP     PracPfR
     C                   Eval      DisName=Name
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Answer-7'    Dsply
     C                   Eval      RollNo=1
     C     ROllNo        SetGT     PracPf
     C                   Read      PracPfR
     C                   Eval      DisName=Name
     C                   Eval      DisRollNo=RollNo
     C     DisRollNo     Dsply
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Part-3'      Dsply
     C     'Answer-1'    Dsply
     C                   Eval      ROllNO=1
     C     RollNo        CHAIN(E)  PracPfR
     C                   Eval      DisName=Name
     C                   Eval      DisRollNo=RollNo
     C     DisRollNo     Dsply
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Answer-2'    Dsply
     C                   Eval      ROllNO=3
     C     RollNo        CHAIN(E)  PracPfR
     C                   Eval      DisName=Name
     C                   Eval      DisRollNo=RollNo
     C     DisRollNo     Dsply
     C     DisName       Dsply
     **
     C                   clear                   DisName
     C                   clear                   Name
     C     'Answer-3'    Dsply
     C                   EVAL      RollNo=1
     C     RollNo        CHAIN(E)  PracPfR
     C                   DOW       NOT %eof(PracPf)
     C                   EVAL      DisROllNo=RollNo
     C                   EVAL      DisName=Name
     C     DisRollNo     Dsply
     C     DisName       Dsply
     C     RollNo        READPE    PracPfR
     C                   ENDDO
     **
     C                   Eval      *inlr=*on
