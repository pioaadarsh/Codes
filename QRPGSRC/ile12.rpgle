        Ctl-Opt Nomain;
        Dcl-Proc GetUserName Export;

        Dcl-Pi GetUserName Char(30);
          UserID Zoned(4);
        End-Pi;

        Dcl-S UserName Char(30);

      * Main logic

           If UserId = 4422;
              UserName='Aadarsh';
           Else;
              UserName='UserName Not Found';
           EndIF;

           Return UserName;
        End-Proc GetUserName;
