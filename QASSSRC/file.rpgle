     FTable1    IF   E           k Disk
     DD_ID             S              2S 0
     C     *hival        SETgt     Table1
     C                   READP     Table1R
     C                   DOW       NOT %eof(Table1)
     C                   EVAL      D_ID=ID
     C     D_ID          DSPLY
     C                   READ      Table1R
     C                   ENDDO
     C                   EVAL      *inlr=*on
