     **free
       Dcl-s i Zoned(10) Inz(0);
       Dcl-s j Zoned(10) Inz(0);
       Dcl-s Num Zoned(10);
       Dcl-s Star VarChar(20) Inz('');
       Dsply 'Enter the Value of Num:' ''Num;
       For i=0 To Num-1;
         Star='';
         For j=0 To i;
           Star = Star + '*';
         EndFor;
         Dsply Star;
       EndFor;
       *Inlr=*On;
