**free

  Dcl-S Array1 Zoned(2) Dim(7);
  Dcl-S Array2 Zoned(2) Dim(7);
  Dcl-S i Zoned(2) Inz(1);

  For i=1 to 7;
    Dsply 'Enter the number' ''Array1(i);
  Endfor;

  Array2=%Subarr(Array1:2:4);

  For i=1 to 4;
    Dsply Array2(i);
  Endfor;

  *Inlr=*On;
