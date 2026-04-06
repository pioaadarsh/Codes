**free
    Dcl-S SqlStmt1 Char(500);
    Dcl-S W_ID Zoned(3);
    Dcl-S W_NAME Char(10);
    Dcl-S W_DEPT Char(10);
    Dcl-Ds datas extname('PF2');
    End-Ds;

    exec sql set option commit=*none;

    SqlStmt1='select *  From pf2 '+
             'Where emp_id = ? and emp_name = ? and Dept = ?';
    Dsply 'Enter the Id' ''W_ID;
    Dsply 'Enter the Name' ''W_NAME;
    Dsply 'Enter the Dept' ''W_DEPT;

    exec sql
      Prepare SelectStmt From :SqlStmt1;
    exec sql

      Declare c1 cursor for SelectStmt;

    Exec sql open c1 using :W_ID, :W_NAME, :W_DEPT;

    Exec sql
      fetch from c1 into :datas;

    if Sqlcode=100;
      Dsply 'Record not found';
    Else;
      Dsply Datas;
    Endif;

    Exec Sql
      Close c1;


    *Inlr=*On;
