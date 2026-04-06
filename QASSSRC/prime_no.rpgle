**free
  Dcl-S Num zoned(10);
  Dcl-S i zoned(10);
  Dcl-S j zoned(10);
  Dcl-S Count zoned(10);

  Dsply 'Enter the prime numbers required ' ''Num;
  for i=2 to Num;
        Count=0;
        for j=2 to i;
            if (%Rem(i:j)=0);
                count+=1;
            endif;
        endfor;
        if count=1;
            dsply i;
        endif;
  endfor;
  *Inlr=*On;
