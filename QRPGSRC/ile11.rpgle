



           Dcl-Pr GetUserName Char(30);
             UserId Zoned(4);
           End-Pr;

           Dcl-Pr GetPassword Zoned(4);
              UserId Zoned(4);
           End-Pr;



           Dcl-S T_UserId Zoned(4);
           Dcl-s T_UserName Char(30);
           Dcl-s T_Password Zoned(4);

           T_UserId=4422;
           T_UserName = GetUserName(T_UserId);
           Dsply 'UserName : ';
           Dsply T_UserName;
           T_Password = GetPassword(T_UserId);
           Dsply'Password : ';
           Dsply T_PassWord;
           *inlr = *on;
