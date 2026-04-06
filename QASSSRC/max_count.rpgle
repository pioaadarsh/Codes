**free
  Dcl-S String char(20);
  Dcl-S Length Zoned(2);
  Dcl-S i Zoned(2);
  Dcl-S j Zoned(2);
  Dcl-S Count Zoned(2);
  Dcl-S N_Count Zoned(2) Inz(0);
  Dcl-S pos Zoned(2);
  Dcl-S N_ch varchar(1);
  Dcl-S ch varchar(1);


  Dsply 'Enter the String' ''String;
  Length=%len(%trim(String));
  for i=1 to Length;
    Count=0;
    pos=0;
    ch=%subst(String:i:1);
    j=1;
    dow j<=Length;
      pos=%scan(ch:String:j);
      if pos<>0;
        j=pos+1;
        count+=1;
      else;
        j=j+1;
      endif;
    enddo;
    if N_Count<Count;
      N_ch=ch;
    endif;
  endfor;
  dsply N_ch;
  *Inlr=*On;
