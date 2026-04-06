     Dbefore           C                   'abcdefghijklmnopqrstuvwxyz'
     Dafter            C                   'defghijklmnopqrstuvwxyzabc'
     Dstring1          S             20A
     Dstring2          S             20A
     C                   Dsply                   string1
     C     before:after  xlate     string1:1     string2
     C     string2       dsply
     C                   Eval      *Inlr=*On
