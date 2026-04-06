        Ctl-Opt Nomain;
        Dcl-Proc GetPassword Export;

        Dcl-Pi GetPassword Zoned(4);
          UserID Zoned(4);
        End-Pi;

        Dcl-S Password Zoned(4);

      * Main logic

           If UserId = 4422;
              Password=1234;
           Else;
              Password=0000;
           EndIF;

           Return Password;
        End-Proc GetPassword;
