**free
    Ctl-Opt Option(*NoDebugIO : *SrcStmt);
    Dcl-S W_EMPID Zoned(10);
    Dcl-S W_EMPNAME Char(10);
    Dcl-S W_EMPDEPT Char(10);
    Dcl-S W_MESSAGE Char(52);

    exec sql set option CLOSQLCSR = *ENDMOD;

    exec sql
      Declare EmpCsr1 cursor for
      Select Emp_Id, Emp_Name, Dept from Pf2;

    exec sql open EmpCsr1;

    Dow Sqlcode=0;
      exec sql fetch from EmpCsr1 into
      :W_EMPID, :W_EMPNAME, :W_EMPDEPT;
      If Sqlcode=100;
        Leave;
      Endif;
      Dsply W_EMPNAME;
    Enddo;

    exec sql close EmpCsr1;

    exec sql
      Declare EmpCsr2 cursor for
      Select Emp_Id, Emp_Name, Dept from Pf2
      Where Dept='CSE';

    exec sql open EmpCsr2;

    Dow Sqlcode=0;
      exec sql fetch from EmpCsr2 into
      :W_EMPID, :W_EMPNAME, :W_EMPDEPT;
      If Sqlcode=100;
        Leave;
      Endif;
      Dsply W_EMPNAME;
    Enddo;

    exec sql close EmpCsr2;

    *Inlr=*On;
