**free

  Dcl-Ds Data Qualified;
    FullTime Char(14);
    Year Char(4) Overlay (FullTime :1);
    Month Char(2) Overlay (FullTime :5);
    Day Char(2) Overlay (FullTime :7);
    Hour Char(2) Overlay (FullTime :9);
    Minute Char(2) Overlay (FullTime :11);
    Second Char(2) Overlay (FullTime :13);
  End-Ds;

  Data.FullTime='20210807023501';
  Dsply Data.FullTime;

  Dsply Data.Day;
  Dsply Data.Month;
  Dsply Data.Year;
  Dsply Data.Second;
  Dsply Data.Minute;
  Dsply Data.Hour;

  *Inlr=*On;
