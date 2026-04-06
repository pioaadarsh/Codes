**free
  Dcl-S Array1 Zoned(2) Dim(6);
  Dcl-S i Zoned(2) Inz(1);
  For i=1 to 6;
    Dsply 'Enter the number:' ''Array1(i);
  Endfor;

  Sorta Array1;

  For i=1 to 5;
    If (Array1(i)=Array1(i+1));
      Clear Array1(i+1);
    Endif;
  Endfor;

  For i=1 to 6;
    Dsply Array1(i);
  Endfor;

  *Inlr=*On;
