     DARRAY1           S              5A   Dim(5)
     DARRAY2           S              2S 0 Dim(5) Alt(ARRAY1)
**free
  Dcl-S i Zoned(2) Inz(1);

  For i=1 to 7;
    Dsply 'Enter the name of Day' ''Array1(i);
  Endfor;

  For i=1 to 7;
    Dsply 'Enter the name of Day' ''Array2(i);
  Endfor;
  For i=1 to 7;
    Dsply Array2(i);
  Endfor;

  *Inlr=*On;
