     H Nomain

     PAddition         B                   Export
     DAddition         PI             5S 0
     DNum1                            5S 0
     DNum2                            5S 0
     DNum3                            5S 0 Options(*NoPass)
     DResult           S              5S 0

     C                   If        %Parms >2
     C                   Eval      Result=Num1+Num2+Num3
     C                   Else
     C                   Eval      Result=Num1+Num2
     C                   Endif
     C                   Return    Result
     PAddition         E
