     FRPF1      uf   e           k DISK
     C                   EVAL      STU_ID=103
     C     STU_ID        SETLL     RPF1
     C     STU_ID        READE     RPF1R
     C                   DOW       NOT %eof(RPF1)
     C                   EVAL      STU_CLASS=3
     C                   UPDATE    RPF1R
     C     STU_ID        READE     RPF1R
     C                   ENDDO
     C                   EVAL      *inlr=*on
