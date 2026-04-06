     H Nomain
     DG_Output         S              4S 0
     P Subtraction     B                   Export
     D Subtraction     PI             4S 0
     DNumber1                         2S 0 VALUE
     DNumber2                         2S 0 VALUE
     DOutput           S              4S 0

     C                   Eval      Output = Number1 - Number2
     C                   Eval      G_Output = Output+ G_Output
     C                   Return    Output

     P Subtraction     E
