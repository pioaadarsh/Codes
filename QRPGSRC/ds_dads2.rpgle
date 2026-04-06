**free
  Dcl-Ds Students Dtaara('AADARSH/DAREA1');
    Lines Char(500);
    FirstLine Char(15) Overlay (Lines:1);
    SecondLine Char(14) Overlay (Lines:20);
  End-Ds;

  in Students;
    Dsply FirstLine;
    Dsply SecondLine;

  *Inlr=*On;
