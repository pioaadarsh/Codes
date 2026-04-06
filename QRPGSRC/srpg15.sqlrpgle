**free
    Dcl-S sqlStmt Varchar(500);
    Dcl-S W_EMPID Zoned(10);
    Dcl-S W_EMPNAME Char(10);
    Dcl-S W_EMPDEPT Char(10);
    Dcl-C quote Const('''');

    Exec Sql set option commit=*none;

    Dsply 'Enter the employee Id' ''W_EMPID;
    Dsply 'Enter the employee Name' ''W_EMPNAME;
    Dsply 'Enter the employee Department' ''W_EMPDEPT;

    sqlStmt = 'Insert into Pf2 ' + 'Values(' + %trim(%Char(W_EMPID))
              + ',' + quote + %trim(W_EMPNAME) + quote
              + ',' + quote + %trim(W_EMPDEPT) + quote + ')';


    Exec SQL Execute Immediate :sqlStmt;

    If Sqlcode = 0;
      Dsply 'Insert successful';
    Else;
      Dsply 'Handle error';
    EndIf;

    *Inlr=*On;
