
        //---------- control optinon------------------------
          //for debugging purpose
            ctl-opt option(*nodebugio:*srcstmt);

        //---------- File declaration ----------------------
            dcl-f sngpgsfl workstn Indds(Indrds) sfile(sngpgbuff:rrn);
            dcl-f stupf  disk usage(*input:*output:*delete:*update) keyed;

            dcl-s rrn packed(4);  //variable to handle rrn value
            dcl-s i  packed(4);
            dcl-s firstrcd zoned(3);
            dcl-c sflSize const(5);
          //------------ indicator data structure --------------
            dcl-ds indrds;
              exit           ind   pos(03);
              sflclrind      ind   pos(13);
              sfldspInd      ind   pos(10);
              sfldspctlInd   ind   pos(11);
              sflendInd      ind   pos(14);
              pageup         ind   pos(91);
              pagedown       ind   pos(92);
           end-ds;


          //------------- main pgm -----------------------

          exsr clr_sfl ;

          setll *loval stupf ;

          exsr loadsfl;

          exsr displaysfl;

          *inlr = *on ;

          //------------ clear sfl subroutine ----------
          begsr clr_sfl;
            sflclrind = *on;
            rrn  = 0;
            write sngpgctl;
            sflclrind = *off;
          endsr;

          //------------ clear sfl subroutine ---------------
         begsr loadsfl;
           read stupf ;
           dow not %eof(stupf);
             d1rollno = rollno;
             d1name   = name;
             d1class  = class;
             rrn = rrn+1;

             if rrn = 1;
               firstrcd = rollno;
             endif;

             write sngpgbuff;

             if rrn = sflSize;
               leave;
             endif;
             read stupf;
           enddo;

           if %eof(stupf);
             sflendInd = *on;
           else;
             sflendInd = *off;
           endif;
         endsr;

         //---------- display sfl subroutine ----------------

         begsr displaysfl;

           dow exit = *off;
             sfldspInd     = *on;
             sfldspctlInd  = *on;

             if rrn = 0;
               sfldspInd = *off;
             endif;

             write footer;

             exfmt sngpgctl;

             exsr processkey;
           enddo;
         endsr ;

        //----------  handling page up and page down --------------

         begsr processkey;

           if pagedown  = *on;

             if sflendInd = *off;
               exsr clr_sfl;
               exsr loadsfl ;
             endif;

           elseif pageup = *on;
             setll firstrcd stupf ;
             for i = 1 to 6;    // sflpage + 1

               readp stupf;
               if %eof(stupf);
                 setll *loval stupf;
                 leave;
               endif;
             endfor;
           exsr clr_sfl;
           exsr loadsfl ;
           endif;
         endsr;

