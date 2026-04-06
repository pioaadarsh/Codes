**free
    Dcl-S SqlStmt1 Char(500);
    Dcl-S W_VALUE Zoned(10);
    Dcl-S W_NAME Char(10);

    Exec Sql set option commit=*none;

    SqlStmt1='Update PF2 '+
            'Set Emp_Name = (?) '+
            'Where Emp_Id = (?)';

    exec sql
      Prepare UpdateStmt From :SqlStmt1;

    Dsply 'Enter the Name' ''W_NAME;
    Dsply 'Enter the Id' ''W_VALUE;

    exec sql
      Execute UpdateStmt using :W_NAME, :W_VALUE;

    If Sqlcode=0;
      Dsply 'Update Succesful';
    Else;
      Dsply 'Update not Succesful';
    Endif;


    *Inlr=*On;
