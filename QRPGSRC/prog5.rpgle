     FRPF1      if   e           k DISK
     FCLASS_DET o    e             DISK    Prefix(S_)
     C     *hival        SETGT     RPF1
     C                   READP     RPF1R
     C                   DOW       NOT %eof(RPF1)
     C                   EVAL      S_STU_ID=STU_ID
     C                   EVAL      S_STU_NAME=STU_NAME
     C                   EVAL      S_STU_CLASS=STU_CLASS
     C                   WRITE     CLASS_DETR
     C                   READP     RPF1R
     C                   ENDDO
     C                   EVAL      *inlr=*on
