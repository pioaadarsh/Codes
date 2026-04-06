     **Free
       Dcl-s String varchar(20) inz('I Love My India');
       Dcl-s RevStr varchar(20) inz('');
       Dcl-s Start zoned(10);
       Dcl-s Length zoned(10);

       Start = %Len(string);

       Dow Start > 0;

         Dow Start > 0 and %SubSt(string:Start:1) = ' ';
           Start -= 1;
         EndDo;

         Length = 0;
         Dow Start > 0  and %SubSt(string:Start:1) <> ' ';
           Start -= 1;
           Length +=1;
         EndDo;

         If Length > 0;
           If RevStr <> '';
             RevStr = RevStr + ' ';
           Endif;
             RevStr = RevStr + %SubSt(string:Start + 1:Length);
         EndIf;
       EndDo;

       Dsply RevStr;

       *InLr = *On;
