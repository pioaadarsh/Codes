**free
  Dcl-S String char(20);
  Dcl-S Vow varchar(20) Inz('');
  Dcl-S Conso varchar(20) Inz('');
  Dcl-S Length Zoned(2);
  Dcl-S i Zoned(2);
  Dcl-S ch varchar(1);


  Dsply 'Enter the String' ''String;
  Length=%len(%trim(String));
  for i=1 to Length;
    ch=%subst(String:i:1);
    if ch='a' or ch='e' or ch='i' or ch='o' or ch='u';
      Vow+=ch;
    else;
      Conso+=ch;
    endif;
  endfor;
  Dsply 'Vowels are:' ''Vow;
  Dsply 'Consonents are:' ''Conso;
  *Inlr=*On;
