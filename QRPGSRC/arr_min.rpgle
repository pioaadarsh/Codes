**free

  Dcl-S Array1 Zoned(2) Dim(7);
  Dcl-S i Zoned(2) Inz(1);
  Dcl-S Ans Zoned(2) Inz(1);

  For i=1 to 7;
    Dsply 'Enter the Numbers' ''Array1(i);
  Endfor;

  Ans=%Minarr(Array1);

  Dsply 'The minimum value find at index:' ''Ans;
  Dsply 'having value:' ''Array1(Ans);

  *Inlr=*On;
