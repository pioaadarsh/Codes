     **free
       dcl-s First_Num zoned(10);
       dcl-s Second_Num zoned(10);
       dcl-s Result_Num zoned(10);
       dcl-s Num zoned(10);
       dcl-s I zoned(10);
       First_Num=0;
       Second_Num=1;
       dsply 'Enter the number' ''Num;
       dsply First_Num;
       dsply Second_Num;
       for I=1 to (Num-2);
         Result_Num=First_Num+Second_Num;
         First_Num=Second_Num;
         Second_Num=Result_Num;
         dsply Result_Num;
       endfor;
       *inlr=*on;
