     **free
       Ctl-Opt Option(*NoDebugIO : *SrcStmt);
       Dcl-S W_EMPID Zoned(10);
       Dcl-S W_EMPNAME Char(10);
       Dcl-S W_MESSAGE Char(52);

       Dcl-DS EmpDs extname('PF2') Qualified;
       End-DS;

       Dcl-DS EmpDs1  Qualified;
         EMPNAME Char(10);
         EMPDEPT Char(10);
       End-DS;

       W_EMPID=101;

       exec sql
       SELECT EMP_NAME INTO :W_EMPNAME FROM PF2 WHERE EMP_ID = :W_EMPID;

       Dsply W_EMPNAME;

       exec sql
       SELECT EMP_NAME INTO :W_EMPNAME FROM PF2 WHERE Dept = 'CSE';

       exec Sql Get Diagnostics Condition 1 :W_MESSAGE = MESSAGE_TEXT;

       Dsply W_MESSAGE;

       exec sql
       SELECT EMP_NAME INTO :W_EMPNAME FROM PF2 WHERE Dept = 'CSE'
       fetch first row only;

       Dsply W_EMPNAME;

       exec sql
         Select * into :EmpDs from Pf2 Where Emp_Id = :W_EMPID;

       Dsply EmpDs.DEPT;

       exec sql
        Select Emp_Name, Dept into :EmpDs1
        from Pf2 Where Emp_Id = :W_EMPID;

       Dsply EmpDs1.EMPNAME;

       *Inlr=*On;
