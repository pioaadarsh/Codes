     FTableA    IF   E             Disk
     DD_ID             S              2A
     C     *start        SETLL     TableA
     C                   READ      TableAR
     C                   DOW       NOT %eof(TableA)
     C                   EVAL      D_ID=ID
     C     D_ID          DSPLY
     C                   READ      TableAR
     C                   ENDDO
     C                   EVAL      *inlr=*on
