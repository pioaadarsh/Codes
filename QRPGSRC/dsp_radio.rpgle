**Free

    Dcl-F RadioD workstn;

    Dow *In03 = *off;
      Exfmt Radio;

      Select;
        When GENDER = 1;
          CHOICE = 'MALE';

        When GENDER = 2;
          CHOICE = 'FEMALE';

        When GENDER = 3;
          CHOICE = 'OTHER';

        EndSl;
    EndDo;

    *Inlr = *On;

