**free
    Dcl-S SqlStmt1 Char(500);
    Dcl-S W_VALUE Zoned(10);
    Dcl-S W_FIELD Char(9);

    Exec Sql set option commit=*none;

    SqlStmt1='Delete From PF2 '+
            'Where emp_id = (?)';

    exec sql
      Prepare DeleteStmt From :SqlStmt1;

    Dsply 'Enter the Value' ''W_VALUE;

    exec sql
      Execute DeleteStmt using :W_VALUE;

    If Sqlcode=0;
      Dsply 'Delete Succesfully';
    Else;
      Dsply 'Delete Un-Succesfully';
    Endif;


    *Inlr=*On;
