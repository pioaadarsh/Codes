     DString           S             20A   Inz('Aadarsh Ajmera')
     DTrim_Str         S             20A
     C                   Eval      Trim_Str=%Trim(String:'a')
     C     Trim_Str      Dsply
     C                   Eval      Trim_Str=%Trim(String:'A  ')
     C     Trim_Str      Dsply
     C                   Eval      Trim_Str=%TrimL(String:'Aa')
     C     Trim_Str      Dsply
     C                   Eval      Trim_Str=%TrimR(String:'era ')
     C     Trim_Str      Dsply
     C                   Eval      *Inlr=*On
