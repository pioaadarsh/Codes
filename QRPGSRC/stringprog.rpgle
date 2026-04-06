     *************** Declaration Section ***********************************************************
     DName1            s             20A
     DName2            s              7A
     DResult           s             10s 0
     DResult1          s             40A
     DLo_C             s             26A   inz('abcdefghijklmnopqrstuvwxyz')
     DUp_C             s             26A   inz('ABCDEFGHIJKLMNOPQRSTUVWXYZ')
     DNumber           s             26A   inz('01234567898765432345678912')
     **
     *************** MainLine Calculation *********************************************************
     **
     c                   Eval      Name1='aadarsh'
     c     's'           Scan      Name1         Result
     c     Result        Dsply
     c
     c     'a'           Scan      Name1:3       Result
     c     Result        Dsply
     c
     **
     c                   Eval      Name1 = 'aadarsh ajmera'
     c                   Subst     Name1:9       Result1
     c     Result1       DSPLY
     c
     c                   Clear                   Result1
     c     5             Subst     Name1:3       Result1
     c     Result1       Dsply
     **
     c                   Eval      Name1='Aadarsh'
     c     'Aadr'        Check     Name1         Result
     c     Result        Dsply
     c
     **
     c     'Aars h'      CheckR    Name1         Result
     c     Result        Dsply
     **
     c                   Clear                   Result1
     c                   Eval      Name1='Ajmera'
     c                   MOVE      Name1         Result1
     c     Result1       DSPLY
     c
     **
     c                   EVAL      Name2='Aadarsh'
     c                   MOVEL     Name2         Result1
     c     Result1       DSPLY
     **
     c                   Clear                   Result1
     c                   Eval      Name1='aadarsh'
     c     Lo_C:Up_C     Xlate     Name1         Result1
     c     Result1       Dsply
     c
     **
     c                   Clear                   Result1
     c     Lo_C:Number   Xlate     Name1         Result1
     c     Result1       Dsply
     **
     c                   Eval      *inlr=*on
