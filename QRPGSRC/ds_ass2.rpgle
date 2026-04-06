**free
  //Program Described Data Structure
  Dcl-Ds FullName Qualified;
    FirstName Char(10);
    LastName Char(10);
  End-Ds;
  //Externally Described Data Structure
  Dcl-Ds Week ExtName('ARR2_PF');
  End-Ds;
  //Array Data Structure
  Dcl-Ds Student Qualified Dim(4);
    Name Char(10);
    RollNo Char(2);
  End-Ds;
  //Data Area Data Structure
  Dcl-Ds Students Dtaara('AADARSH/DAREA2') Qualified;
    FirstName Char(50);
  End-Ds;
  Dcl-F arr2_pf Disk Infds(FileInfo);
  //File Information Data Structure
  Dcl-Ds FileInfo;
    File *file ;
    Status *status;
    Record *record;
  End-Ds;
  *Inlr=*On;
