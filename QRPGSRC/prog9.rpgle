     ** Varible Decleration
     **
     Da                s              5S 0 INZ(10)
     Db                S              5S 0 INZ(-2)
     Dc                S              5S 0 INZ(5)
     Dresult           S              5S 0
     **
     ******************* Addition *********************
     **
     C     a             ADD       b             result
     C     result        Dsply
     C                   clear                   result
     **
     ******************* Addition of varible with result ***
     **
     C                   ADD       b             c
     C     c             Dsply
     C                   clear                   result
     **
     ******************* Add numeric value into varible ****
     **
     C                   ADD       10            c
     C     c             Dsply
     C                   clear                   result
     **
     ******************* zero Add opcode *******************
     c                   Eval      a=5
     c                   Eval      b=10
     c                   Z-ADD     b             result
     c     Result        DSPLY
     C                   clear                   result
     c
      ****************** zero Sub opcode *******************
     c                   Eval      a=10
     c                   Eval      b=5
     c                   Z-sub     b             result
     c     Result        DSPLY
     C                   clear                   result
     C                   eval      *inlr=*on
