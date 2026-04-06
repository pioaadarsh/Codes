**free
  Dcl-S String char(20);
  Dcl-S Var char(1);
  Dcl-S C_Count Zoned(2) Inz(0);
  Dcl-S N_Count Zoned(2) Inz(0);
  Dcl-S S_Count Zoned(2) Inz(0);
  Dcl-S Length Zoned(2);
  Dcl-S i Zoned(2);

  Dsply 'Enter the String' ''String;
  Length=%len(%trim(String));

  for i=1 to length;
    Var=%Subst(String:i:1);
    if Var in %range('A':'Z') or Var in %range('a':'z');
      C_Count+=1;
    Elseif Var in %range('0':'9');
      N_Count+=1;
    Else;
      S_Count+=1;
    Endif;
  Endfor;
  Dsply 'Count of Characters is:' ''C_Count;
  Dsply 'Count of Numbers is:' ''N_Count;
  Dsply 'Count of Special-Characters is:' ''S_Count;
  *Inlr=*On;
