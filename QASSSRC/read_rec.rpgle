     FTable1    IF   E           k Disk
     DD_ID             S              2S 0
     DD_Name           S              5A
     C     Klist1        KLIST
     C                   KFLD                    ID
     C                   KFLD                    NAME
     C     Klist1        SETGT     Table1
     C                   READ      Table1R
     C                   DOW       NOT %eof(Table1)
     C                   EVAL      D_ID=ID
     C                   EVAL      D_Name=Name
     C     D_ID          DSPLY
     C     D_Name        DSPLY
     C                   READ      Table1R
     C                   ENDDO
     C                   EVAL      *inlr=*on
