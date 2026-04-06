     DInput1           S              7P 0 Inz(0123456)
     DInput2           S              7S 0 Inz(-0123456)
     DInput3           S              7P 2 Inz(01234.56)
     DInput4           S              7S 2 Inz(-01234.56)
     DInput5           S              7P 2 Inz(00000.00)
     DOutput           S             50A
     C                   Eval      Output=%EDITC(Input1:'1')
     C     Output        Dsply
     C                   Eval      Output=%EDITC(Input2:'J')
     C     Output        Dsply
     C                   Eval      Output=%EDITC(Input3:'3')
     C     Output        Dsply
     C                   Eval      Output=%EDITC(Input4:'N')
     C     Output        Dsply
     C                   Eval      Output=%EDITC(Input5:'1')
     C     Output        Dsply
     C                   Eval      *Inlr=*On
