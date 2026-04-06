     **free
       ctl-opt Nomain;

       Dcl-F Dsply_sfl Workstn Sfile(Sfldtl:rrnn) Indds(Inds1);
       Dcl-DS Inds1;
          Exit       ind pos(3);
          Cancel     ind pos(12);
          Sfldsp     ind pos(31);
          Sfldspctl  ind pos(32);
          Sflclr     ind pos(33);
          Sflend     ind pos(34);
       End-DS;
       Dcl-S W_Emp_Id Zoned(3);
       Dcl-S W_Emp_Name Char(20);
       Dcl-S W_Emp_Sal Zoned(10);
       Dcl-S W_Emp_DOJ Zoned(10);
       Dcl-S Rrnn Packed(4);
       Dcl-Proc ClearPr Export;

         Sflclr = *On;
         Rrnn = 0 ;
         Write Sflctl1;
         Sflclr = *Off;
       End-Proc;
       Dcl-Proc Load Export;

       Exec Sql Declare c1 cursor for
                 Select EMP_ID,EMP_NAME,EMP_SAL,
                 EMP_DOB from Dsplypf;
       Exec Sql Open c1;
       Exec Sql Fetch from c1 into
       :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
        Dow Sqlcode=0;
          SflId = W_Emp_Id;
          SflName = W_Emp_Name;
          SflSalary = W_Emp_Sal;
          SflDate = W_Emp_DOJ;
          Rrnn+=1;
          If Rrnn > 9999;
            Leave;
          Endif;
          Write Sfldtl;
          Exec Sql Fetch from c1 into
          :W_Emp_Id, :W_Emp_Name, :W_Emp_Sal, :W_Emp_DOJ;
        Enddo;
        Exec Sql Close c1;
       End-Proc;
       Dcl-Proc Display export;

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
       End-Proc;
