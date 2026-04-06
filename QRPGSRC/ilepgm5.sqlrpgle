     H Option(*NoDebugIO) BndDir('BNDDIR3')
     h Dftactgrp(*NO)

     DSubtraction      PR             5S 0
     DNum1                            5S 0 Value
     DNum2                            5S 0 Value
     DNum3                            5S 0 Value

     DOutput           S              5S 0

     C                   Eval      Output=Subtraction(50:5)
     C     Output        Dsply
     C
     C                   Eval      *Inlr=*On
