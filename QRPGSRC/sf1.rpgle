     **Free
       Ctl-Opt Option(*NoDebugIO : *SrcStmt);
      *File Specifications
       Dcl-F Dsplypf Disk Usage(*Input: *Update: *Output) keyed;
       Dcl-F Dsply_sfl Workstn Sfile(Sfldtl:rrnn) Indds(Inds1);
      *Indicator ds
        Dcl-DS Inds1;
          Exit       ind pos(3);
          Cancel     ind pos(12);
          Sfldsp     ind pos(31);
          Sfldspctl  ind pos(32);
          Sflclr     ind pos(33);
          Sflend     ind pos(34);
        End-DS;
      *
       Dcl-S Rrnn Zoned(5);
         Dow Exit=*Off and Cancel=*Off;
           Exsr Sfl_clear;
           Exsr Sfl_load ;
           Exsr Sfl_display;

           If Exit = *On;
             Leave;
           Endif;
         Enddo;
       *Inlr=*On;
         //---------------------------------------------------------
         //         sfl_clear - clear subfile
         //---------------------------------------------------------
         Begsr Sfl_clear;
           Sflclr = *On;
           Rrnn = 0 ;
           Write Sflctl1;
           Sflclr = *Off;
         Endsr;
         //---------------------------------------------------------
         //         sfl_load - load subfile
         //---------------------------------------------------------
         Begsr Sfl_load;
           Setll *Loval Dsplypf;
           Read Dsplypfr;
           Dow Not %Eof;
             SflId = Emp_Id;
             SflName = Emp_Name;
             SflSalary = Emp_Sal;
             SflDate = Emp_DOB;
             Rrnn += 1;
             If Rrnn > 9999;
               LeaveSr;
             Endif;
             Write sfldtl;
             Read Dsplypfr;
           Enddo;
         Endsr;
         //-------------------------------------------
         //          sfldsp - display subfile
         //-------------------------------------------
         Begsr Sfl_display;
           Dow Cancel=*Off;
             Sfldsp=*On;
             Sfldspctl =*On;
             Sflend =*On;
             If Rrnn < 1;
               Sfldsp = *Off;
             Endif;
             Frtkey = 'F3=Exit  F12=Cancel';
             Write Header ;
             Write Footer;
             Exfmt Sflctl1;
             Select;
               When exit =*on;
                 Leavesr;
               Other;
             Endsl;
           Enddo;
         Endsr;
