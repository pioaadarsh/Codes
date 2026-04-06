     **free
       Dcl-F LETTERSPF Disk Usage(*Input) Keyed;
       Setll *Loval LETTERSPF;
       Read LETTERSPFR;
       Dow Not %Eof(LETTERSPF);
         Dsply Characters;
         Read LETTERSPFR;
       Enddo;

       *Inlr=*On;
