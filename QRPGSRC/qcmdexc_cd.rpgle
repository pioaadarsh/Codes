**Free

    Dcl-Pr QCMDEXC ExtPgm('QCMDEXC');
      Cmd Char(300) Const;
      CmdLen Packed(15:5) Const;
    End-Pr;

    Dcl-S MyCommand Char(300);

    MyCommand = 'CRTJRNRCV JRNRCV(AADARSH/JrnRcv3)';

    QCMDEXC(%trim(MyCommand): %Len(%trim(MyCommand)));

    MyCommand = 'CRTJRN JRN(AADARSH/Jrn4) +
                 JRNRCV(AADARSH/JrnRcv3)';
    QCMDEXC(%trim(MyCommand): %Len(%trim(MyCommand)));

    MyCommand = 'STRJRNPF FILE(AADARSH/PF3) +
                 JRN(AADARSH/Jrn4)';

    QCMDEXC(%trim(MyCommand): %Len(%trim(MyCommand)));

    MyCommand ='DSPJRN JRN(AADARSH/JRN4) FILE((AADARSH/PF3)) +
                OUTPUT(*outfile) OUTFILE(AADARSH/TEST6)';

    QCMDEXC(%trim(MyCommand): %Len(%trim(MyCommand)));

    *Inlr = *On;
