     **free
       Dcl-s Num1 zoned(5);
       Dcl-s Num2 zoned(5);
       Dcl-s Result zoned(5);

       Dsply 'Enter the first number' ''Num1;
       Dsply 'Enter the second number' ''Num2;
       Result = Num1 + Num2;
       Dsply Result;

       Result = Num1 - Num2;
       Dsply Result;

       Result = Num1 * Num2;
       Dsply Result;

       *Inlr=*On;
