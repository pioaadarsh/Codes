**free
    Dcl-S SqlStmt1 Char(500);
    Dcl-S W_VALUE Zoned(3);
    Dcl-Ds datas extname('PF2');
    End-Ds;

    exec sql set option commit=*none;
  //SqlStmt1='select *  into (?) From pf2 '+
    SqlStmt1='select *  From pf2 '+
             'Where emp_id = ?';
    Dsply 'Enter the Value' ''W_VALUE;

    exec sql
      Prepare SelectStmt From :SqlStmt1;
    exec sql
    //Execute SelectStmt using  :Datas, :W_VALUE;
    //Execute SelectStmt using  :W_VALUE;
  //exec sql
      Declare c1 cursor for SelectStmt;

    Exec sql open c1 using :W_VALUE;

    Exec sql
      fetch from c1 into :datas;
    Exec Sql
      Close c1;
    Dsply Datas;


    *Inlr=*On;
