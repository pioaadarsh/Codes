     FPf1       UF A E           k Disk
     DDS1              DS                  LikeRec(Pf1R)

     C     *Loval        Setll     Pf1
     C                   Read      Pf1R          DS1
     C                   Dow       Not %EOF(Pf1)
     C     DS1           Dsply
     C                   Read(N)   Pf1R          DS1
     C                   Enddo
     C                   If        %EOF
     C     'End of File' Dsply
     C                   Endif
     C                   Eval      *Inlr=*On
