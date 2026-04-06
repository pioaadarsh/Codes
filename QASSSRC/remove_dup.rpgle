**free
  Dcl-S String char(20);
  Dcl-S Answer varchar(20) Inz('');
  Dcl-S Length Zoned(2);
  Dcl-S i Zoned(2);
  Dcl-S pos Zoned(2) Inz(0);
  Dcl-S ch varchar(1);

  Dsply 'Enter the string' ''String;
  Length=%len(%trim(String));

  for i=1 to Length;
    ch=%subst(String:i:1);
    pos=%scan(ch:Answer);
    if pos=0;
      Answer+=ch;
    endif;
  endfor;
  Dsply Answer;
  *Inlr=*On;
