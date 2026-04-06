**free
    Ctl-Opt Option(*NoDebugIO : *SrcStmt);
    Dcl-S W_ROWS Zoned(1);
    Dcl-DS EmpDs1 extname('PF2') Qualified Dim(4);
    End-DS;

    exec sql set option CLOSQLCSR = *ENDMOD;

    exec sql
      Declare EmpCsr1 scroll cursor for
      Select Emp_Id, Emp_Name, Dept from Pf2;

    exec sql open EmpCsr1;

    W_ROWS=2;

    exec sql fetch EmpCsr1 for :W_ROWS rows into
    :EmpDs1;


    Dsply EmpDs1(1);
    Dsply EmpDs1(2);

    exec sql close EmpCsr1;

    *Inlr=*On;

