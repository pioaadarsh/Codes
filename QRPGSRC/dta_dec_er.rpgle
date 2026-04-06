     **free
       dcl-F pf4  disk usage(*input);

       Dow (1 = 1) ;
         Read PF4;
         If (%Eof) ;
           Leave ;
         Endif ;

       Dsply %Char(EMP_ID) ;
       Enddo ;

       *Inlr = *On ;
