     **free
       dcl-f rpf1 disk usage(*input);
       setll *hival rpf1;
       readp rpf1;
       dow not %eof(rpf1);
       dsply STU_NAME;
       readp rpf1;
       enddo;
       *inlr=*on;
