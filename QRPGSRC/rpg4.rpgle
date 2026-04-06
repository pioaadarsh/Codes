     **free
       dcl-f rpf1 disk usage(*input);
       dcl-f class_det disk usage(*input: *output) prefix(S_);
       setll *start rpf1;
       read rpf1r;
       dow not %eof(rpf1);
       S_STU_ID=STU_ID;
       S_STU_NAME=STU_NAME;
       S_STU_CLASS=STU_CLASS;
       write class_detr;
       read rpf1r;
       enddo;
       *inlr=*on;
