     HDFTACTGRP(*NO)
     DDepartment       S             20A
     DName             S             20A
     DAge              S             10S 0
     DProgram          PR                  EXTPGM('ILEMOD6')
     DName                           20A
     DDepartment                     20A
     DAge                            10S 0

     C                   Callp     Program(Name : Department : Age)
     C     Name          Dsply
     C     Department    Dsply
     C     Age           Dsply
     C                   Eval      *Inlr = *On
