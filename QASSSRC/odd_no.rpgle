     **free

       Dcl-s Count Zoned(10);
       Dcl-s Num Zoned(10);
       Count=1;
       Num=1;
       dow Count <> 21;
         If %Rem(Num:2)<>0;
           Dsply Num;
           Count = Count + 1;
         EndIf;
         Num = Num + 1;
       EndDo;

       *Inlr=*On;
