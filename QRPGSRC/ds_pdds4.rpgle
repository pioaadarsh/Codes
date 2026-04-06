**free

  Dcl-Ds FullName Template Qualified;
    FirstName Char(10);
    LastName Char(10);
  End-Ds;

  Dcl-Ds Name likeds(FullName);

  Dsply 'Enter firstname:' ''Name.FirstName;
  Dsply 'Enter lastname:' ''Name.LastName;

  Dsply Name;

  *Inlr=*On;
