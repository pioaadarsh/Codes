**free
  dcl-s String char(20);
  dcl-s Rev char(20) Inz('');
  dcl-s Length zoned(10);
  dcl-s i zoned(10);

  dsply 'Enter string' ''String;
  Length = %len(%trimr(String));
  for i = Length downto 1 by 1;
      Rev = %trim(Rev)+%subst(String:i:1);
  endfor;
  if %trimr(String) = Rev;
      dsply 'The string is a palindrome.';
  else;
      dsply 'The string is not a palindrome.';
  endif;

  *inlr = *on;
