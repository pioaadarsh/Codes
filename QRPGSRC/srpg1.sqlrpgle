     H Option(*NoDebugIO : *SrcStmt)
     DW_EMPID          S              5S 0
     DW_EMPNAME        S             20A
      * --------------------------------------------------------------------------------------------
      * MAINLINE
      * --------------------------------------------------------------------------------------------
     C                   Eval      W_EMPID=101
     C
     C/EXEC SQL
     C+ SELECT EMP_NAME INTO :W_EMPNAME FROM PF2 WHERE EMP_ID = :W_EMPID
     C/END-EXEC
     C
     C     W_EMPNAME     Dsply
     C
     C                   Eval      *Inlr=*On
