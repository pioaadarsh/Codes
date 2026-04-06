**free

  Dcl-S Array1 Zoned(2) Dim(7);
  Dcl-S i Zoned(2) Inz(1);
  Dcl-S Ans Zoned(2) Inz(1);

  For i=1 to 7;
    Dsply 'Enter the number' ''Array1(i);
  Endfor;

  Ans=%Xfoot(Array1);

  Dsply 'The total sum of array is:' ''Ans;

  *Inlr=*On;
