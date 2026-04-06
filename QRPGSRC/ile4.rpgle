     H Option(*nodebugio) BNDDIR('BND1')
     H DFTACTGRP(*NO)

      *Prototype Declaration

     DAddition         PR             4S 0
     DNumber1                         2S 0
     DNumber2                         2S 0

      *Program Variable Declaration

     D Num1            S              2S 0 Inz(40)
     D Num2            S              2S 0 Inz(20)
     D Output          S              4S 0

      *Calling the Addition Procedure
     C                   Eval      Output=Addition(Num1:Num2)
     C     Output        DSPLY

     C                   Eval      *Inlr=*On
