     **file description
     FRPF1      IF   E           k DISK

     ** Variable declarattion
     DID               S              5S 0
     DNAME             S             20A
     DCLASS            S              2S 0

     ** Mainline Calculation
     C     *end          SETLL     RPF1
     C                   READ      RPF1R
     C
     C                   EVAL      Name=STU_NAME
     C     Name          DSPLY
     C
     C     *start        SETLL     RPF1
     C                   READ      RPF1R
     C
     C                   EVAL      Name=STU_NAME
     C     Name          DSPLY
     C
     C                   EVAL      *INLR=*ON
