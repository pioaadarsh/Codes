     *************** Declaration Section ***********************************************************
       Dcl-F Ass1 Disk Usage(*Input:*Delete) Keyed;
       Dcl-F Ass2 Disk Usage(*Input:*Output) Keyed Prefix(S_);
       Dcl-S Id Zoned(3:0);
       Dcl-S Temp_Id Zoned(3:0) Inz(0);
       Dcl-S Name Char(10);
       Dcl-S Temp_Name Char(10) Inz('');
     *************** Calculation Section ***********************************************************
       Setll *Loval Ass1;
       Read Ass1r;

       Dow Not %Eof(Ass1);
         If (Id<>Temp_Id) or (Name<>Temp_Name);
           S_Id=Id;
           S_Name=Name;
           Write Ass2r;
           Temp_Id=Id;
           Temp_Name=Name;
         Else;
           Delete Ass1r;
         Endif;
         Read Ass1r;
       Enddo;

         *Inlr=*on;
