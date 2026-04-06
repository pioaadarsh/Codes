**free

  Dcl-S Array1 Zoned(5) Dim(5);
  Dcl-S MaxNo Zoned(5);
  Dcl-S MinNo Zoned(5);

  Array1(1)=10520;
  Array1(2)=10514;
  Array1(3)=25148;
  Array1(4)=12154;
  Array1(5)=35531;

  MaxNo=%Maxarr(Array1);
  MinNo=%Minarr(Array1);

  Dsply 'The maximum value find at index:' ''Array1(MaxNo);
  Dsply 'The minimum value find at index:' ''Array1(MinNo);

  *Inlr=*On;
