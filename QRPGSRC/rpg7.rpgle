     **free
       dcl-s mbr_name char(20) Inz('mem2');
     **Dsply 'Enter the name of member' ''mbr_name;
       dcl-f rpf1 disk usage(*input) extmbr(mbr_name);


       setll *hival rpf1;
       readp rpf1;
       dow not %eof(rpf1);
       dsply STU_NAME;
       readp rpf1;
       enddo;
       *inlr=*on;
