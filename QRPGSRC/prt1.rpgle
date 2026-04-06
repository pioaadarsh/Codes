**free
    Dcl-F Prt01 Printer Usage(*Output);
    Dcl-F DSPLYPF Disk Usage(*Input: *Update: *Output) keyed;
    Dcl-S Sum Zoned(7) Inz(0);


    P1DATE = *Date;
    Write Hdr;

    Read DSPLYPFR;
    Dow not %eof();
      P1EMP_ID = EMP_ID;
      P1EMP_NAME = EMP_NAME;
      P1SAL = EMP_SAL;
      Sum=P1SAL+Sum;
      Write Dtl;
      Read DSPLYPFR;
    Enddo;

    P1TOTSAL=Sum;
    Write Footer;

    *Inlr=*On;
