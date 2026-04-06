**free
    Ctl-Opt Option(*NoDebugIO : *SrcStmt);
    Dcl-DS EmpDs1 extname('PF2') Qualified Dim(10);
    End-DS;
    Dcl-S i zoned(1);

    exec sql set option CLOSQLCSR = *ENDMOD;

    exec sql
      Declare EmpCsr1 scroll cursor for
      Select Emp_Id, Emp_Name, Dept from Pf2;

    exec sql open EmpCsr1;

    For i=1 to 3;
    exec sql fetch next from EmpCsr1 into :EmpDs1;
    EndFor;

    exec sql fetch Absolute +5 from EmpCsr1 into :EmpDs1;

    Dsply EmpDs1(1);
    Dsply EmpDs1(4);

    exec sql close EmpCsr1;

    *Inlr=*On;
