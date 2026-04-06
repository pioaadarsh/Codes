**free

  Dcl-S Array1 Zoned(2) Dim(5);
  Dcl-S i Zoned(2) Inz(1);

  For i=1 to 5;
    Array(i) = i;
  Endfor;
  Array1=%Split();

  For i=1 to 5;
    Dsply Array1(i);
  Endfor;

  *Inlr=*On;
