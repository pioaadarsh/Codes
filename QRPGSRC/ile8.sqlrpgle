
     DgetCount         Pr
     D*getSalary        Pr
     DupdSal           Pr

     C/EXEC SQL
     C+ Set Option Commit=*none
     C/END-EXEC
     **free

         getCount();
         //getSalary();
         updSal();

     C                   Eval      *Inlr=*On
