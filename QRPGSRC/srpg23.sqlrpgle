     ** Variable Declaration **

     D EId             S              6S 0
     D EName           S             10A

     ** Include the another Sqlrpgle program

     C/Exec Sql
     C+ Include Srpg24
     C/End-Exec

     C     EId           Dsply
     C     EName         Dsply

     ** End of Program

     C                   Eval      *Inlr=*on

