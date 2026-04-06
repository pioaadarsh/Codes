     FRPF1      if   e           k DISK    extmbr('*ALL')
     C     *start        SETLL     RPF1
     C                   READ      RPF1R
     C                   DOW       NOT %eof(RPF1)
     C     STU_NAME      DSPLY
     C                   READ      RPF1R
     C                   ENDDO
     C                   EVAL      *inlr=*on
