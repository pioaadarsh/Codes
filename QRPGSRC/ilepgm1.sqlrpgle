     H Option(*NoDebugIO) BndDir('BNDDIR1')
     H dftactgrp(*no)

     DAddition         PR             5S 0
     DNum1                            5S 0
     DNum2                            5S 0
     DNum3                            5S 0 Options(*NoPass)

     DNumber1          S              5S 0 inz(50)
     DNumber2          S              5S 0 inz(5)
     DNumber3          S              5S 0 inz(2)
     DOutput           S              5S 0

     C                   Eval      Output=Addition(Number1:Number2)
     C     Output        Dsply
     C
     C                   Eval      Output=Addition(Number1:Number2:Number3)
     C     Output        Dsply

     C                   Eval      *Inlr=*On
