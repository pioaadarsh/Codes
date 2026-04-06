     **free
       dcl-s Num1 zoned(2);
       dcl-s Num2 zoned(2);
       dcl-s Average zoned(3:1);
       dcl-s Char_Avg char(3);
       dsply 'enter the first number' ''Num1;
       dsply 'enter 1he first number' ''Num2;

       Average=(Num1+Num2)/2;
       Char_Avg=%char(Average);
       dsply Char_Avg;
       *inlr=*on;
