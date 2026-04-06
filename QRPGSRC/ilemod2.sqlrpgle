     H Nomain

     PAddition         B                   Export
     DAddition         Pi             5S 0
     DNum1                            5S 0
     DNum2                            5S 0 Options(*Omit)
     DNum3                            5S 0
     DNum4                            5S 0 options(*Omit)
     Dresult           S              5S 0

     C
     C                   Eval      Result = Result + Num1
     C                   If        %Addr(Num2)<>*Null
     C                   Eval      Result = Result + Num2
     C                   Endif
     C                   Eval      Result = Result + Num3
     C                   If        %Addr(Num4)<>*Null
     C                   Eval      Result = Result + Num4
     C                   Endif
     C                   Return    Result
     PAddition         E
