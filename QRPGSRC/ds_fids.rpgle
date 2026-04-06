**free

  Dcl-F arr2_pf Disk Infds(FileInfo);
  Dcl-Ds FileInfo;
    File *file ;
    Status *status;
    Record *record;
  End-ds;

  Dsply FileInfo;

  *Inlr=*On;
