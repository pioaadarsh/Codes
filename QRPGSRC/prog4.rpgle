     FRPF1      if   e           k DISK
     FCLASS_DET o    e             DISK    Prefix(S_)
     C                   EVAL      STU_ID=101
     C     STU_ID        SETLL     RPF1
     C     STU_ID        READE     RPF1R
     C                   DOW       NOT %eof(RPF1)
     C                   EVAL      S_STU_ID=STU_ID
     C                   EVAL      S_STU_NAME=STU_NAME
     C                   EVAL      S_STU_CLASS=STU_CLASS
     C                   WRITE     CLASS_DETR
     C     STU_ID        READE     RPF1R
     C                   ENDDO
     C                   EVAL      *inlr=*on
