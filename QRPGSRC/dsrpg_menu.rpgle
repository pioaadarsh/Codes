     **free
         Dcl-F dsply_mn workstn;

       Dow *In03=*Off;
         Clear CMDLINE;
         Reset *In12;
         Exfmt Dsr;
         Clear Msg;

         Select;
           when CMDLINE=1;
             Dow *In12=*off;
               Exfmt About;
             Enddo;
           when CMDLINE=2;
             Dow *In12=*off;
               Exfmt Technology;
             Enddo;
           when CMDLINE=3;
             Dow *In12=*off;
               Exfmt About_rpg;
             Enddo;
           other;
             Msg='Invalid Selection';
         endsl;
       enddo;
       *Inlr=*On;
