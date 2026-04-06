     **free
       dcl-s Num zoned(10);
       dcl-s Fact zoned(20);
       dcl-s I zoned(10);
       dsply 'Enter the number' ''Num;
       Fact=1;
       for I=1 to Num;
         Fact=I*Fact;
       endfor;
       dsply 'Factorial is ' ''Fact;
       *inlr=*on;
