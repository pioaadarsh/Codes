     FPf3       if   e           k disk
     Fqsysprt   o    f  132        printer oflind(*in01)

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

     Oqsysprt   E            header
     O                                           12 'Page Number'
     O                       Page                18
     O                                           55 'Employee Report'
     O                                           75 'Date:'
     O                       Udate         Y
     O          E            header      1
     O                                           19 'Employee Id'
     O                                           45 'Employee Name'
     O                                           67 'Employee dept'
     O
     O          E            detail      1
     O
     O                       emp_id              11S
     O                       emp_name            42A
     O                       Dept                64A
     O          E            Footer      2
     O                                           50 '--- END ---'
