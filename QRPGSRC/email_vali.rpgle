**free
  Dcl-S String1 Char(30);
  Dcl-S Chk_Char1 Char(1) Inz('.');
  Dcl-S Chk_Char2 Char(2) Inz('@');
  Dcl-S Char1 Char(1);
  Dcl-S Char2 Char(1);
  Dcl-S Msg Char(30);
  Dcl-S Length1 Zoned(2);
  Dcl-S Pos2 Zoned(2);
  Dcl-S Chk_Num1 Zoned(1) Inz(0);
  Dcl-S i Zoned(2);
  Dcl-S String4 Char(64);
  Dcl-S String2 Char(26);
  Dcl-S String3 Char(26);
  Dcl-S String5 Char(12);

  // Coding Section
  String2='abcdefghijklmnopqrstuvwxyz';
  String3='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String5='_1234567890.';
  String4=String2+String3+String5;


  Dsply 'Enter the email id:' ''String1;
  Length1=%len(%trim(String1));
  //Dsply Length1;
  char1=%subst(String1:Length1-3:1);
  char2=%subst(String1:Length1-9:1);
  Pos2=%check(String4:%trim(String1));

  For i = 1 to Length1-10;
    If (%Subst(String1: i: 1) >= 'A' and %Subst(String1: i: 1) <= 'Z') or
       (%Subst(String1: i: 1) >= 'a' and %Subst(String1: i: 1) <= 'z');
      Chk_Num1=1;
      Leave;
    EndIf;
  EndFor;

  Dsply Chk_Num1;

  Select;
    When String1=*blanks;
      Msg='Email Cant be blank';
    When Chk_Char1<>char1;
      Msg='Email is not valid';
    When Chk_Char2<>char2;
      Msg='Email is not valid';
    When pos2<>0 and pos2<>Length1-3 and pos2<>Length1-9;
      Msg='Email is not valid';
    When pos2=1;
      Msg='Email is not valid';
    When Chk_Num1=0;
      Msg='Email is not valid';
    Other;
      Msg='Email is valid';
  Endsl;

  Dsply Msg;
  *Inlr=*On;
