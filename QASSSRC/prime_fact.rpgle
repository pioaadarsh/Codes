**free
  Dcl-S Num zoned(10);
  Dcl-S i zoned(10);
  Dcl-S j zoned(10);
  Dcl-S Count zoned(10);
  Dsply 'Enter the prime numbers required ' ''Num;
  for j=2 to Num;
    if (%Rem(Num:j)=0);
      Count=0;
      for i=2 to j;
          if (%Rem(j:i)=0);
              count+=1;
          endif;
      endfor;
      if count=1;
          dsply j;
      endif;
    endif;
  endfor;

  *Inlr=*On;
