     H Nomain
     DG_Result         S              4S 0
     P Addition        B                   Export
     D Addition        PI             4S 0
     DNumber1                         2S 0 VALUE
     DNumber2                         2S 0 VALUE
     DResult           S              4S 0

     C                   Eval      Result = Number1 + Number2
     C                   Eval      G_Result = Result+ G_Result
     C                   Return    Result

     P Addition        E
