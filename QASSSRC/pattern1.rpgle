**free
  Dcl-S Num Zoned(2);
  Dcl-S Range Zoned(2);
  Dcl-S i Zoned(2);
  Dcl-S j Zoned(2);
  Dcl-S stars varchar(25);

  dsply 'Enter number of stars in line' ''Num;
  dsply 'Enter number of lines' ''Range;

  i=1;
    Dow i<=Range;
      j=1;
      clear stars;
      Dow j<=i*Num;
        Stars+='* ';
        j+=1;
      Enddo;
      Dsply Stars;
      i+=1;
    Enddo;
  *Inlr=*on;
