       Dcl-S Dist         Zoned(2:0);
       Dcl-S Time         Zoned(1:0);
       Dcl-S Speed        Zoned(2:0);
       Dist=6;
       Time=2;
       Speed=Dist/Time;
       
       Dist=6;
       Time=0;
       Speed=Dist/Time;
       *InLR = *On;
       BEGSR *PSSR;
         DSPLY ('DATA ERROR');
         RETURN;
       ENDSR;
