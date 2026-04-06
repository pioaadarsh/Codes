**free

  Dcl-S Array1 Zoned(2) Dim(7);
  Dcl-S i Zoned(2) Inz(1);

  For i=1 to 7;
    Dsply 'Enter the number' ''Array1(i);
  Endfor;

  Sorta(d) Array1;

  For i=1 to 7;
    Dsply Array1(i);
  Endfor;

  *Inlr=*On;
