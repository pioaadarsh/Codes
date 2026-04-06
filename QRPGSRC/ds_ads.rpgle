**free

  Dcl-Ds Student Qualified Dim(4);
    Name Char(10);
    RollNo Char(2);
  End-Ds;
  Dcl-S i Zoned(1) Inz(1);

  For i=1 to 4;
    Dsply 'Enter name of student' ''Student(i).Name;
    Dsply 'Enter roll no of student' ''Student(i).RollNo;
  Endfor;

  For i=1 to 4;
    Dsply Student(i).Name;
    Dsply Student(i).RollNo;
  Endfor;

  *Inlr=*On;
