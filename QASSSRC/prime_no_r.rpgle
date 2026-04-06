**free
  Dcl-S First zoned(10);
  Dcl-S Second zoned(10);
  Dcl-S i zoned(10);
  Dcl-S j zoned(10);
  Dcl-S Count zoned(10);

  Dsply 'Enter starting position ' ''First;
  Dsply 'Enter ending position ' ''Second;
  for i=First to Second;
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
