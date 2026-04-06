**free
  Dcl-S Range Zoned(2);
  Dcl-S i Zoned(2);
  Dcl-S j Zoned(2);
  Dcl-S k Zoned(2);
  Dcl-S stars varchar(25);
  Dcl-S spaces varchar(25);

  dsply 'Enter number of lines' ''Range;

  i=0;
    Dow i<Range;
      j=0;
      clear stars;
      clear spaces;
      Dow j<i;
        Spaces+=' ';
        j+=1;
      Enddo;
      Stars+=spaces;
      k=0;
      Dow k<2*(Range-i)-1;
        Stars+='*';
        k+=1;
      Enddo;
      Dsply Stars;
      i+=1;
    Enddo;
  *Inlr=*on;
