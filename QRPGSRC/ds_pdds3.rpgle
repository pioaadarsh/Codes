**free

  Dcl-Ds FullName Qualified;
    FirstName Char(10);
    LastName Char(10);
  End-Ds;

  Dcl-Ds Fullname2 Likeds(FullName);

  Dsply 'Enter firstname1:' ''FullName.FirstName;
    Dsply 'Enter lastname1:' ''FullName.LastName;
  Dsply 'Enter firstname2:' ''FullName2.FirstName;
  Dsply 'Enter lastname2:' ''FullName2.LastName;

  Dsply FullName;
  Dsply FullName2;

  *Inlr=*On;
