     **Free
       Dcl-s i Zoned(10) Inz(1);
       Dcl-s j Zoned(10);
       Dcl-s String Varchar(30);
       Dcl-s Ch Char(1);
       Dsply 'Enter the String:' ''String;
       j=%Len(%Trim(String:' '));
       Dow i<=j;
         Ch=%SubSt(String:i:1);
         %SubSt(String:i:1)=%SubSt(String:j:1);
         %SubSt(String:j:1)=Ch;
         i=i+1;
         j=j-1;
       EndDo;
       Dsply String;
       *Inlr=*On;
