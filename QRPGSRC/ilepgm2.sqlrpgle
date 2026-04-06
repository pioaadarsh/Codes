     H Option(*NoDebugIO) BndDir('BNDDIR2')
     H Dftactgrp(*NO)

     DAddition         PR             5S 0
     DNum1                            5S 0
     DNum2                            5S 0 Options(*omit)
     DNum3                            5S 0
     DNum4                            5S 0 Options(*omit)

     DNumber1          S              5S 0 inz(50)
     DNumber2          S              5S 0 inz(5)
     DNumber3          S              5S 0 inz(2)
     DNumber4          S              5S 0 inz(3)
     DOutput           S              5S 0 inz(0)

     C                   Eval      Output=Addition(Number1:*omit:Number3:*omit)
     C     Output        Dsply
     C
     C                   Eval      *Inlr=*On
