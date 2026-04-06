     **free
       dcl-f rpf1 disk usage(*delete) keyed;
       stu_id=103;
       setll stu_id rpf1;
       reade stu_id rpf1r;
       delete rpfr1;
       *inlr=*on;
