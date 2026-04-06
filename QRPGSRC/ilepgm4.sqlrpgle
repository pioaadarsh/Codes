     H Option(*NoDebugIO) BndDir('BNDDIR2')
     H DftActGrp(*NO)

     DSubtraction      PR             5S 0
     DNum1                            5S 0 Const
     DNum2                            5S 0 Const

     DNumber1          S              5S 0 inz(55)
     DNumber2          S              5S 0 inz(2)
     DOutput           S              5S 0

     C                   Eval      Output=Subtraction(Number1:Number2)
     C     Output        Dsply
     C
     C                   Eval      *Inlr=*On
