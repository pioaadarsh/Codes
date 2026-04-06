**free
  Dcl-S Array1 Char(10) Dim(7) CTDATA;
  Dcl-S i Zoned(2) Inz(1);

  For i=1 to 7;
    Dsply Array1(i);
  Endfor;

  *Inlr=*On;

**CTDATA Array1
Sunday
Monday
Tuesday
Wednesday
Thrusday
Firday
Saturday
