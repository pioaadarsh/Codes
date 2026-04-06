     H Nomain

     PSubtraction      B                   Export
     DSubtraction      PI             5S 0
     DNum1                            5S 0 Const
     DNum2                            5S 0 Const
     DResult           S              5S 0

     C*                  Eval      Num1=1+Num1
     C                   Eval      Result=Num1-Num2
     C                   Return    Result
     PSubtraction      E
