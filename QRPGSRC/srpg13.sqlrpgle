**free
    Ctl-Opt Option(*NoDebugIO : *SrcStmt);
    Dcl-S W_EMPID Zoned(10);
    Dcl-S W_EMPNAME Char(10);
    Dcl-S W_EMPDEPT Char(10);
    Dcl-S W_MESSAGE Char(52);

    exec sql set option CLOSQLCSR = *ENDMOD;

    exec sql
      Declare EmpCsr1 sensitive scroll cursor for
      Select Emp_Id, Emp_Name, Dept from Pf2;

    exec sql open EmpCsr1;

    exec sql fetch last from EmpCsr1 into
             :W_EMPID, :W_EMPNAME, :W_EMPDEPT;

    Dsply W_EMPNAME;

    exec sql fetch last from EmpCsr1 into
             :W_EMPID, :W_EMPNAME, :W_EMPDEPT;

    Dsply W_EMPNAME;

    exec sql close EmpCsr1;

    *Inlr=*On;
