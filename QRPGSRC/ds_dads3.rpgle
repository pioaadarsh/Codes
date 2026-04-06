**free
  Dcl-Ds Students Dtaara('AADARSH/DAREA1');
    Lines Char(500);
    FirstName char(14) pos(1);
    SecondName char(13) pos(20);

  End-Ds;

  in *lock Students;
    Dsply FirstName;
    Dsply SecondName;

    SecondName='Sanskar';
    Out Students;

  *Inlr=*On;
