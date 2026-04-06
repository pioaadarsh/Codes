**free
    Dcl-S SqlStmt1 Char(500);
    Dcl-S W_EMPID Zoned(10);
    Dcl-S W_EMPNAME Char(10);
    Dcl-S W_EMPDEPT Char(10);

    Exec Sql set option commit=*none;

    SqlStmt1='INSERT INTO PF2 '+
            'VALUES (?,?,?)';

    exec sql
      Prepare InsertStmt From :SqlStmt1;

    Dsply 'Enter the employee Id' ''W_EMPID;
    Dsply 'Enter the employee Name' ''W_EMPNAME;
    Dsply 'Enter the employee Department' ''W_EMPDEPT;

    exec sql
      Execute InsertStmt using :W_EMPID, :W_EMPNAME, :W_EMPDEPT;

    If Sqlcode=0;
      Dsply 'Insert Succesfully';
    Else;
      Dsply 'Insert Un-Succesfully';
    Endif;


    *Inlr=*On;
