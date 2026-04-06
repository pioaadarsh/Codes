**free
    Dcl-S Email_Valid Char(7);
    Dcl-S Email Char(30);
    Dcl-S SqlStmt1 Char(500);

    Exec Sql
      Select case when Emp_eml like '%_@__%.__%' then 'Valid'
              else 'Invalid' end into :Email_Valid from Dsplypf
              Where emp_id=101;

    Dsply Email_Valid;

    *Inlr=*On;
