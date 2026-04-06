     **free
       dcl-f rpf1 disk usage(*input);
       dcl-s name char(20);
       setll *start rpf1;
       read rpf1;
       name = STU_name;
       dsply name;
       *inlr=*on;
