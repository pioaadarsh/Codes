     **free
       dcl-s Num zoned(3);
       dcl-s Dup zoned(3);
       dcl-s Res zoned(3);
       dcl-s Remainder zoned(3);
       Num=371;
       Dup=Num;
       Res=0;
       dow Dup<>0;
         Remainder=%rem(dup:10);
         Res=Remainder**3+Res;
         Dup=Dup/10;
       enddo;
       if Res=Num;
         dsply 'This is a armstrong number';
       else;
         dsply 'This is not an armstrong number';
       endif;
       *inlr=*on;
