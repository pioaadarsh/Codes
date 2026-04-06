
       //---------- control optinon------------------------

           ctl-opt Option(*Nodebugio:*srcstmt);

       //---------- File declaration ----------------------
           dcl-f exppgsfl workstn Indds(Indrds) sfile(sngpgbuff:rrn)
                                                infds(infds1);
           dcl-f stupf  disk usage(*input:*output:*delete:*update) keyed;

           dcl-s rrn packed(4);

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
         //----------- information data structure ------------
          dcl-ds infds1;
            rcdno      int(5) pos(378);
          end-ds;

         //------------- main pgm -----------------------

         exsr clr_sfl ;

         setll *loval stupf ;

         exsr loadsfl;

         exsr displaysfl;
         *inlr = *on ;

         begsr clr_sfl;
           sflclrind = *on;
           rrn  = 0;
           write sngpgctl;
           firstrrn = 1;
           sflclrind = *off;
         endsr;

        begsr loadsfl;
          read stupf ;
          dow not %eof(stupf);
             d1rollno = rollno;
             d1name   = name;
             d1class  = class;
             rrn = rrn+1;

             write sngpgbuff;

             if rrn = 5      ;
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

        begsr displaysfl;
          dow exit = *off;
            sfldspInd     = *on;
            sfldspctlInd  = *on;

            if rrn = 0;
              sfldspInd = *off;
            endif;

            write footer;

            exfmt sngpgctl;
              select ;

                when pagedown = *on and sflendInd = *off;

                  exsr processkey;
                other;

                  firstrrn = rcdno;
              endsl;
          enddo;
        endsr ;

        begsr processkey;

          pagedown = *off;
          exsr loadsfl ;
        endsr;

