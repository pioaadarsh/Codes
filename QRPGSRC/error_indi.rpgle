     FPf1       UF   E           K Disk    Usropn
     DS_ID             S              3s 0

     C                   Eval      S_ID =102
     C     S_ID          Setll     Pf1r                                 66
     C                   Exsr      @Error
     C                   Eval      Stu_Name = 'xyz'
     C                   Update    Pf1r                                 66
     C                   Exsr      @Error
     C                   SetOn                                        Lr
     C     Error         Begsr
     C                   If        *In66 = *On
     C                   If        %Status(Pf1) = 1211
     C                   Open      Pf1
     C                   ElseIf    %Status(Pf1) = 1221
     C                   Read(E)   Pf1
     C                   Eval      Stu_Name = 'Sahil'
     C                   Update    Pf1r
     C                   EndIf
     C                   Endif
     C                   Endsr
