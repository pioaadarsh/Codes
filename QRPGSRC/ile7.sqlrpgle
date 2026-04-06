     H nomain
     DNbrEmp           S              5S 0
     DTotSal           S             10S 0
     DgetCount         Pr
     DgetSalary        Pr
     DUpdSal           Pr

     C/EXEC SQL
     C+ Set Option Commit=*none
     C/END-EXEC

     PgetCount         B                   Export
     DgetCount         Pi

     C/EXEC SQL
     C+ Select Count(*) into :NbrEmp from Dsplypf
     C/END-EXEC

     C     NbrEmp        Dsply
     C                   Return

     PgetCount         E

     PgetSalary        B                   Export
     DgetSalary        Pi

     C/EXEC SQL
     C+ Select sum(Emp_Sal) into :TotSal from Dsplypf
     C/END-EXEC

     C     Totsal        Dsply
     C                   Return

     PgetSalary        E

     PUpdSal           B                   Export
     DUpdSal           Pi

     C/EXEC SQL
     C+ Update Dsplypf Set Emp_Sal = 2*Emp_Sal Where Emp_id = 101
     C/END-EXEC

     C                   Return

     PUpdSal           E
