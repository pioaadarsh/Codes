     FTableA    IF   E             Disk
     DD_ID             S              2A
     C     *end          SETLL     TableA
     C                   READP     TableAR
     C                   DOW       NOT %eof(TableA)
     C                   EVAL      D_ID=ID
     C     D_ID          DSPLY
     C                   READP     TableAR
     C                   ENDDO
     C                   EVAL      *inlr=*on
