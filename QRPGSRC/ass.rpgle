     *************** Declaration Section ***********************************************************
       Dcl-F Ass1 Disk Usage(*Input:*Delete) Keyed;
       Dcl-F Ass2 Disk Usage(*Input:*Output) Keyed Prefix(S_);
       Dcl-S Temp Zoned(10);
     *************** Calculation Section ***********************************************************
       Setll *Loval Ass1;
       Read Ass1r;

       Dow Not %Eof(Ass1);
         S_Id=Id;
         S_Name=Name;
         If S_Id=Temp;
           Delete Ass1r;
         Else ;
           Setll *Loval Ass2;
           Read Ass2r;
           Dow Not %Eof(Ass2);
             If S_id=Id;
               Read Ass2r;
             Else;
               Write Ass2r;
               Temp=Id;
             Endif;
           Enddo;
         Endif;
         id=(temp+1);
         setll id Ass1;
         Reade id Ass1r;
       Enddo;

         *Inlr=*on;
