**free
  Dcl-S String char(20);
  Dcl-S Length Zoned(2);
  Dcl-S i Zoned(2);
  Dcl-S j Zoned(2);
  Dcl-S Count Zoned(2);
  Dcl-S Pos Zoned(2);
  Dcl-S Ch varchar(1);


  Dsply 'Enter the String' ''String;
  Length=%len(%trim(String));
  for i=1 to Length;
    Count=0;
    Pos=0;
    Ch=%subst(String:i:1);
    j=1;
    dow j<=Length;
      Pos=%scan(ch:String:j);
      if Pos<>0;
        j=Pos+1;
        Count+=1;
      else;
        j=j+1;
      endif;
    enddo;
    Dsply Count;
  endfor;
  *Inlr=*On;
