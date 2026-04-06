     FPf3       if   e           k disk
     FPRT02     o    f  132        printer oflind(*in01)

      /Free
           Except header;
           setll *loval Pf3;
           read Pf3;
           dow not %eof();
             if *in01=*on;
               except header;
               *in01=*off;
             endif;
             except detail;
             read Pf3;
           enddo;

           except footer;
           dsply 'report generate successfully';
        *inlr=*on;
        return ;

      /End-Free

     OPRT02     E            header
     O                                           12 'Page Number'
     O                       Page                18
     O                                           55 'Employee Report'
     O                                           75 'Date:'
     O                       Udate         Y
     O          E            header      1
     O                                           15 'Employee Id'
     O                                           41 'Employee Name'
     O                                           63 'Employee dept'
     O
     O          E            detail      1
     O
     O                       emp_id               7S
     O                       emp_name            38A
     O                       Dept                60A
     O          E            Footer      2
     O                                           50 '--- END ---'
