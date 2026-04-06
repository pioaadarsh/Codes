      *
     **free
       dcl-f Empl_pf1 usage(*input: *delete) keyed;
       dcl-f Dsply1 Workstn;
       dcl-s w1empid like(Emp_id);
       *inlr=*on;
       *in51=*on;
        dow *in03=*off ;
          exfmt dsply1r;
          emp_id = d1empid;
          w1empid = emp_id;
          chain w1empid empl_pf1r;
          if %found() ;
            clear d1error;
            delete empl_pf1r;
            d1error = 'Record deleted';
          else;
            clear d1error;
            d1error = 'Record not found';
          endif;
        enddo;
           *inlr=*on;
