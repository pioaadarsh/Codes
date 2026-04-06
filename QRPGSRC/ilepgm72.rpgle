      *Program Variable Declaration

     D Result          S              4S 0
     D Output          S              4S 0
      *Prototype Declaration

     DAddition         PR             4S 0
     DNumber1                         2S 0 VALUE
     DNumber2                         2S 0 VALUE

     DSubtraction      PR             4S 0
     DNumber1                         2S 0 VALUE
     DNumber2                         2S 0 VALUE
      *Calling the Addition Procedure
     C                   Eval      Result=Addition(10:5)
     C     Result        DSPLY
     C                   Eval      Output=Subtraction(10:5)
     C     Output        DSPLY

     C                   Eval      *Inlr=*On
