     *************** Declare procedure **************************
     **
     H nomain
     DVarible1         S              3S 0 inz(50)
     DVarible2         S              3S 0 inz(50)
     DResult           S              3S 0
     **
     *************** prototype declare ************************
     **
     DAddition         Pr
     **
     PAddition         B                   Export
     DAddition         pi
     **
     C
     C
     C                   Eval      Result=Varible1+varible2
     C     Result        Dsply
     C
     PAddition         E
