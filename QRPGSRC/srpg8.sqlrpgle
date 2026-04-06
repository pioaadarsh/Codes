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

    W_EMPID=104;
    W_EMPNAME='Saksham';
    W_EMPDEPT='IT';

    exec sql
      Execute InsertStmt using :W_EMPID, :W_EMPNAME, :W_EMPDEPT;

    If Sqlcode=0;
      Dsply 'Insert Succesfully';
    Else;
      Dsply 'Insert Un-Succesfully';
    Endif;


    *Inlr=*On;
