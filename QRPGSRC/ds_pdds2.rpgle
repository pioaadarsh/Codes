**free

  Dcl-Ds FullName Qualified;
    FirstName Char(10);
    LastName Char(10);
  End-Ds;

  Dsply 'Enter firstname:' ''FullName.FirstName;
  Dsply 'Enter lastname:' ''FullName.LastName;

  Dsply FullName;

  *Inlr=*On;
