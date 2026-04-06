     **free
       Ctl-Opt Option(*NoDebugIO : *SrcStmt);
       Dcl-F Dsply_sfl3 Workstn Sfile(Sfldtl:rrnn) Indds(Inds1);
       Dcl-DS Inds1;
          Exit         ind pos(3);
          Refresh      ind pos(5);
          Cancel       ind pos(12);
          RiPcSchid    ind pos(21);
          RiPcSchName  ind pos(22);
          RiPcSchSal   ind pos(23);
          RiPcSchDoj   ind pos(24);
          Sfldsp       ind pos(31);
          Sfldspctl    ind pos(32);
          Sflclr       ind pos(33);
          Sflend       ind pos(34);
       End-DS;
       Dcl-S SqlStmt1 Char(500);
       Dcl-S T_Emp_Id Zoned(3);
       Dcl-S T_Emp_Name Char(20);
       Dcl-S T_Emp_Sal Zoned(10);
       Dcl-S T_Emp_DOJ Zoned(10);
       Dcl-S W_Emp_Id Zoned(3);
       Dcl-S W_Emp_Name Char(20);
       Dcl-S W_Emp_Sal Zoned(10);
       Dcl-S W_Emp_DOJ Zoned(10);
       Dcl-S Rrnn Packed(4);

      //Main Coding Line
       Exec Sql set option commit=*none;
       Dow Exit=*Off and Cancel=*Off;
          If Refresh=*On;
            Exsr Refreshsr;
          Endif;
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
          Clear DS_ERR;
          Sflclr = *On;
          Rrnn = 0 ;
          Write Sflctl1;
          Sflclr = *Off;
       Endsr;
       //---------------------------------------------------------
         //         sfl_load - load subfile
         //---------------------------------------------------------
       Begsr Sfl_load;
          Exsr Resetsr;
          Select;
            When Schid<>0;
              SqlStmt1='Select EMP_ID,EMP_NAME,EMP_SAL,EMP_DOB from Dsplypf ' +
                       'Where emp_id = ?';
              exec sql
                Prepare SrchidStmt From :SqlStmt1;
              Exec Sql Declare c1 cursor for SrchidStmt;
              T_Emp_Id=Schid;
              Exec Sql Open c1 using :T_Emp_Id;
              Exec Sql Fetch from c1 into
                      :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
              If Sqlcode=100;
                RiPcSchid=*On;
                DS_ERR='Record Not found';
              Endif;
              Dow Sqlcode=0;
                SflId = W_Emp_Id;
                SflName = W_Emp_Name;
                SflSalary = W_Emp_Sal;
                SflDate = W_Emp_DOJ;
                Rrnn+=1;
                If Rrnn > 9999;
                  LeaveSr;
                Endif;
                Write Sfldtl;
                Exec Sql Fetch from c1 into
                  :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
              Enddo;
              Exec Sql Close c1;
            When schname<>'';
              SqlStmt1='Select EMP_ID,EMP_NAME,EMP_SAL,EMP_DOB from Dsplypf ' +
                       'Where emp_name = ?';
              exec sql
                Prepare SrchnameStmt From :SqlStmt1;
              Exec Sql Declare c2 cursor for SrchnameStmt;
              T_Emp_Name=Schname;
              Exec Sql Open c2 using :T_Emp_Name;
              Exec Sql Fetch from c2 into
                      :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
              If Sqlcode=100;
                RiPcSchName=*On;
                DS_ERR='Record Not found';
              Endif;
              Dow Sqlcode=0;
                SflId = W_Emp_Id;
                SflName = W_Emp_Name;
                SflSalary = W_Emp_Sal;
                SflDate = W_Emp_DOJ;
                Rrnn+=1;
                If Rrnn > 9999;
                  LeaveSr;
                Endif;
                Write Sfldtl;
                Exec Sql Fetch from c2 into
                      :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
              Enddo;
              Exec Sql Close c2;
            When schSal<>0;
              SqlStmt1='Select EMP_ID,EMP_NAME,EMP_SAL,EMP_DOB from Dsplypf ' +
                       'Where emp_sal = ?';
              exec sql
                Prepare SrchsalStmt From :SqlStmt1;
              Exec Sql Declare c3 cursor for SrchsalStmt;
              T_Emp_Sal=Schsal;
              Exec Sql Open c3 using :T_Emp_Sal;
              Exec Sql Fetch from c3 into
                      :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
              If Sqlcode=100;
                RiPcSchSal=*On;
                DS_ERR='Record Not found';
              Endif;
              Dow Sqlcode=0;
                SflId = W_Emp_Id;
                SflName = W_Emp_Name;
                SflSalary = W_Emp_Sal;
                SflDate = W_Emp_DOJ;
                Rrnn+=1;
                If Rrnn > 9999;
                  LeaveSr;
                Endif;
                Write Sfldtl;
                Exec Sql Fetch from c3 into
                      :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
              Enddo;
              Exec Sql Close c3;
            When schdoj<>0;
              SqlStmt1='Select EMP_ID,EMP_NAME,EMP_SAL,EMP_DOB from Dsplypf ' +
                       'Where emp_dob = ?';
              exec sql
                Prepare SrchdojStmt From :SqlStmt1;
              Exec Sql Declare c4 cursor for SrchdojStmt;
              T_Emp_DOJ=Schdoj;
              Exec Sql Open c4 using :T_Emp_DOJ;
              Exec Sql Fetch from c4 into
                      :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
              If Sqlcode=100;
                RiPcSchDoj=*On;
                DS_ERR='Record Not found';
              Endif;
              Dow Sqlcode=0;
                SflId = W_Emp_Id;
                SflName = W_Emp_Name;
                SflSalary = W_Emp_Sal;
                SflDate = W_Emp_DOJ;
                Rrnn+=1;
                If Rrnn > 9999;
                  LeaveSr;
                Endif;
                Write Sfldtl;
                Exec Sql Fetch from c4 into
                      :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
              Enddo;
              Exec Sql Close c4;
            Other;
              Exec Sql Declare c5 cursor for
                       Select EMP_ID,EMP_NAME,EMP_SAL,
                       EMP_DOB from Dsplypf;
              Exec Sql Open c5;
              Exec Sql Fetch from c5 into
                      :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
              If Sqlcode=100;
                DS_ERR='Record Not found';
              Endif;
              Dow Sqlcode=0;
                SflId = W_Emp_Id;
                SflName = W_Emp_Name;
                SflSalary = W_Emp_Sal;
                SflDate = W_Emp_DOJ;
                Rrnn+=1;
                If Rrnn > 9999;
                  LeaveSr;
                Endif;
                Write Sfldtl;
                Exec Sql Fetch from c5 into
                      :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
              Enddo;
              Exec Sql Close c5;
          Endsl;
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
            Frtkey = 'F3=Exit  F5=Refresh  F12=Cancel';
            Write Header ;
            Write Footer;
            Exfmt Sflctl1;
            If Exit =*on;
              Leavesr;
            Endif;
            Leavesr;
            Enddo;
       Endsr;

       Begsr Resetsr;
         RiPcSchid=*Off;
         RiPcSchName=*Off;
         RiPcSchSal=*Off;
         RiPcSchDoj=*Off;
       Endsr;

       Begsr Refreshsr;
        Exsr Resetsr;
        Clear Schid;
        Clear SchName;
        Clear SchSal;
        Clear SchDoj;
        Clear DS_ERR;
       Endsr;
