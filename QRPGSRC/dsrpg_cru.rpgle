     **free
        // Control Section

        Ctl-Opt Option(*NoDebugIO : *Srcstmt);

        // Declaration Section

        // File Declarations
        Dcl-F Dsplypf Usage(*Input: *Output: *Update: *Delete) Keyed;
        Dcl-F Dsp_Crud Workstn Indds(Inds1);

        // Data Structure Declarations
        Dcl-DS Inds1;
          Exit       ind pos(3);
          Refresh    ind pos(5);
          Cancel     ind pos(12);
          Confirm    ind pos(23);
          D1IdRiPc   ind pos(51);
          D1OptRiPc  ind pos(52);
          D2IdRiPc   ind pos(50);
          D2NameRiPc ind pos(53);
          D2PhNoRiPc ind pos(54);
          D2AdrsRiPc ind pos(55);
          D2DOBRiPc  ind pos(56);
          D2SalRiPc  ind pos(57);
          D2Id_PrUi  ind pos(97);
          Protect    ind pos(98);
          Und        ind pos(99);
        End-DS;

        // Variable Declarations
        Dcl-S TId Like(Emp_Id);
        Dcl-S TOpt Like(D1Opt);
        Dcl-S String1 Char(52);
        Dcl-S String2 Char(26);
        Dcl-S String3 Char(26);

        // Coding Section
        String2='abcdefghijklmnopqrstuvwxyz';
        String3='ABCDEFPNOPQRSTUVWXYZ';
        String1=String2+String3;

        // Loop for Exiting the program
        Dow Exit=*Off;

          // Writing Record formats on the screen
          Write Header;
          Write Footer;
          Exfmt MainScreen;
          Clear Crudr;

          Clear Msg;
          Exsr Reset;
          TId=D1Id;
          TOpt=D1Opt;

          // Conditions for Mainscreen Options
          Select;
            When Refresh=*On;
              Exsr RefreshSr;
            When Cancel=*On;
              Exit=*On;
              Leave;
            When TId<=0;
              D1IdRiPc=*On;
              Msg='Id cant be blank';
            When TOpt<=0 and TId<=0;
              D1OptRiPc=*Off;
              D1IdRiPc=*On;
              Msg='Id cant be blank';
            When TOpt<=0;
              D1IdRiPc=*Off;
              D1OptRiPc=*On;
              Msg='Option cant be blank';
            When TId>0 and TOpt>0;

              If TOpt=2 or TOpt=4 or TOpt=5 or TOpt=7;
                // Finding Record in File
                Chain D1Id Dsplypfr;
                If %found();
                  Select;
                    When TOpt=2;
                      Exsr UpdateSr;
                    When TOpt=5;
                      Exsr ViewSr;
                    When TOpt=4;
                      Exsr DeleteSr;
                    When TOpt=7;
                      Msg='Recored Already exists';
                  Endsl;
                Elseif TOpt=7;
                  Exsr InsertSr;
                Else;
                  Msg='Id not found';
                Endif;
              Else;
                D1OptRiPc=*On;
                Msg='Option is not valid';
              Endif;
          Endsl;
        Enddo;

        // End of program
        *Inlr=*On;

        // Sub-Routines Section

        // Refresh Indicator Sub-routine
        Begsr RefreshSr;
          Clear Msg;
          Clear Mainscreen;
          Clear Crudr;
        Endsr;

        // View Option Sub-routine
        Begsr ViewSr;
          Clear Msg;

          Dow Cancel=*Off;
            Heading1='View Record';
            D2Id = Emp_id ;
            D2Name = Emp_name;
            D2Sal = Emp_sal;
            D2PhNo = Emp_Ph_No ;
            D2Adrs = Emp_Add;
            D2DOB = Emp_DOB;
            D2Id_PrUi=*On;
            Protect=*On;
            Und=*On;
            Write Footer;
            Exfmt Crudr;
            Select;
              When Cancel=*On;
                Clear Mainscreen;
                Leave;
              When exit=*On;
                Leave;
              When Refresh=*On;
                Exsr RefreshSr;
            Endsl;
          Enddo;
        Endsr;

        // Delete Option Sub-routine
        Begsr DeleteSr;
          Clear Msg;

          Dow Cancel=*Off;
            Heading1='Delete Record';
            D2Cnf='Press F23 to Confirm....';
            D2Id = Emp_id ;
            D2Name = Emp_name;
            D2Sal = Emp_sal;
            D2PhNo = Emp_Ph_No ;
            D2Adrs = Emp_Add;
            D2DOB = Emp_DOB;
            D2Id_PrUi=*On;
            Protect=*On;
            Und=*On;
            Write Footer;
            Exfmt Crudr;
            Select;
              When Cancel=*On;
                Clear Mainscreen;
                Leave;
              When Exit=*On;
                Leave;
              When Refresh=*On;
                Exsr RefreshSr;
              When Confirm=*On;
                Delete Dsplypfr;
                Cancel=*On;
                Clear Crudr;
                Clear MainScreen;
                Msg = 'Record Deleted';
            Endsl;
          Enddo;
        Endsr;

        // Update Option Sub-routine
        Begsr UpdateSr;
          Clear Msg;

          Dow Cancel=*Off;
            Heading1='Update Record';
            D2Cnf='Press F23 to Confirm....';
            D2Id_PrUi=*On;
            D2Id = Emp_id ;
            D2Name = Emp_name;
            D2Sal = Emp_sal;
            D2PhNo = Emp_Ph_No ;
            D2Adrs = Emp_Add;
            D2DOB = Emp_DOB;
            Write Footer;
            Exfmt Crudr;
            Clear Msg;
            Select;
              When Cancel=*On;
                Clear Mainscreen;
                Leave;
              When Exit=*On;
                Leave;
              When Refresh=*On;
                Exsr RefreshSr;
              When Confirm=*On;
                Confirm=*Off;
                Emp_name=D2Name;
                Emp_sal=D2Sal;
                Emp_Ph_No=D2PhNo;
                Emp_Add=D2Adrs;
                Emp_DOB=D2DOB;
                Update Dsplypfr;
                Cancel=*On;
                Clear Crudr;
                Clear MainScreen;
                Msg = 'Record Updated';
              Other;
                Clear Msg;
                Exsr Validation;
            Endsl;
          Enddo;
        Endsr;

        // Insert Option Sub-routine
        Begsr InsertSr;
          Clear Msg;

          Dow Cancel=*Off;
            Heading1='Insert Record';
            D2Cnf='Press F23 to Confirm....';
            D2Id=TId;
            D2Id_PrUi=*On;
            Write Footer;
            Exfmt Crudr;
            Clear Msg;
            Select;
              When Cancel=*On;
                Clear Mainscreen;
                Leave;
              When Exit=*On;
                Leave;
              When Refresh=*On;
                Exsr RefreshSr;
              When Confirm = *on;
                Confirm = *off;
                Emp_Id=D2Id;
                Emp_name=D2Name;
                Emp_sal=D2Sal;
                Emp_Ph_No=D2PhNo;
                Emp_Add=D2Adrs;
                Emp_DOB=D2DOB;
                Write dsplypfr;
                Cancel=*On;
                Clear Crudr;
                Clear MainScreen;
                Msg = 'Record Inserted';
              Other;
                Clear Msg;
                Exsr Validation;
            Endsl;
          Enddo;
        Endsr;

        // Reset Indicators Sub-routine
        Begsr Reset;
          Reset D1IdRiPc;
          Reset D1OptRiPc;
          Reset D2IdRiPc;
          Reset D2Id_PrUi;
          Reset D2NameRiPc;
          Reset D2PhNoRiPc;
          Reset D2AdrsRiPc;
          Reset D2DOBRiPc;
          Reset D2SalRiPc;
          Reset Protect;
          Reset Und;
          Reset Cancel;
        Endsr;

        // Validation Check Sub-routine
        Begsr validation ;
          Exsr Reset;
          Test(DE) *EUR D2DOB;
          Select;
            When D2Id = 0;
              D2IdRiPc = *On;
              Msg='Id cant be blank';
            When D2Name = *Blanks or %check(String1:D2Name)>0 ;
              D2NameRiPc=*On;
              Msg='Name cant be blank or not valid';
            When %Len(%Trim(%Char(D2PhNo))) <> 10;
              D2PhNoRiPc = *On;
              Msg='Phone no must be of 10 digits';
            When D2Adrs = *Blanks ;
              D2AdrsRiPc=*On;
              Msg='Address cant be blank';
            When %error();
              D2DOBRiPc=*On;
              Msg='Date is not valid';
            When D2Sal = 0;
              D2SalRiPc = *On;
              Msg='Salary cant be blank';
            Other;
              D2DOBRiPc=*Off;
              D2AdrsRiPc=*Off;
              D2PhNoRiPc = *Off;
              D2SalRiPc = *Off;
              D2NameRiPc=*Off;
              D2IdRiPc = *Off;
          Endsl;
        Endsr;
