**free
    Ctl-Opt Option(*NoDebugIO : *SrcStmt);
    Dcl-S W_EMPID Zoned(10);
    Dcl-S W_EMPNAME Char(10);
    Dcl-S W_EMPDEPT Char(10);


    exec sql set option CLOSQLCSR = *ENDMOD;

    exec sql
      Declare EmpCsr1 scroll cursor for
      Select Emp_Id, Emp_Name, Dept from Pf2;

    exec sql open EmpCsr1;

    // fetch the first row
    exec sql fetch first from EmpCsr1 into
    :W_EMPID, :W_EMPNAME, :W_EMPDEPT;

    //Dsply W_EMPNAME;

    // fetch the next row
    exec sql fetch next from EmpCsr1 into
    :W_EMPID, :W_EMPNAME, :W_EMPDEPT;

    //Dsply W_EMPNAME;

    // fetch the previous row
    exec sql fetch prior from EmpCsr1 into
    :W_EMPID, :W_EMPNAME, :W_EMPDEPT;

    //Dsply W_EMPNAME;

    // fetch the row relative to the current possition by 2 rows forward
    exec sql fetch relative 2 from EmpCsr1 into
    :W_EMPID, :W_EMPNAME, :W_EMPDEPT;

    //Dsply W_EMPNAME;

    // fetch the row relative to the current possition by 2 rows backward
    exec sql fetch relative -2 from EmpCsr1 into
    :W_EMPID, :W_EMPNAME, :W_EMPDEPT;

    //Dsply W_EMPNAME;


    exec sql close EmpCsr1;

    *Inlr=*On;
