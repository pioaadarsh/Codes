     **free
       dcl-f rpf1 disk usage(*input: *update) keyed;
       stu_id=103;
       setll stu_id rpf1;
       reade stu_id rpf1r;
       stu_class=10;
       update rpf1r;
       *inlr=*on;
