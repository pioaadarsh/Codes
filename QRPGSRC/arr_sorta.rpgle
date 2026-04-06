**free

  Dcl-S Array1 Zoned(2) Dim(7);
  Dcl-S i Zoned(2) Inz(1);
  Dcl-S Ans Zoned(2);

  For i=1 to 7;
    Dsply 'Enter the number' ''Array1(i);
  Endfor;

  Ans=%Lookup(10:Array1:1:7);
  Dsply 'The found string at index:' ''Ans;
  Sorta Array1;

  For i=1 to 7;
    Dsply Array1(i);
  Endfor;

  *Inlr=*On;
