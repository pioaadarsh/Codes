     **free
       Ctl-Opt Option(*NoDebugIO : *SrcStmt);
       Dcl-S W_EMPID Zoned(10);
       Dcl-S W_EMPNAME Char(10);

       W_EMPID=102;
       exec sql
       SELECT EMP_NAME INTO :W_EMPNAME FROM PF2 WHERE EMP_ID = :W_EMPID;

       Dsply W_EMPNAME;

       *Inlr=*On;
