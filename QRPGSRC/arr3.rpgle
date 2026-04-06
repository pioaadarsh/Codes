**free

  Dcl-S Array1 Char(10) Dim(7);
  Dcl-S i Zoned(2) Inz(1);

  For i=1 to 7;
    Dsply 'Enter the name of Day' ''Array1(i);
  Endfor;

  For i=1 to 7;
    Dsply Array1(i);
  Endfor;

  *Inlr=*On;
