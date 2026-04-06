**free
  Dcl-S Array1 Zoned(2) Dim(6);
  Dcl-S Array2 Zoned(2) Dim(6);
  Dcl-S Index Zoned(2) Inz(1);
  Dcl-S i Zoned(2) Inz(1);
  For i=1 to 6;
    Dsply 'Enter the number:' ''Array1(i);
  Endfor;

  For i = 1 to 6;
    If %Lookup(Array1(i):Array2) = 0;
      Array2(Index) = Array1(i);
      Index = Index + 1;
    Endif;
  Endfor;

  For i=1 to 6;
   Dsply Array2(i);
  Endfor;

  *Inlr=*On;
