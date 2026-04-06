**Free

    Dcl-F Pushbtn1  workstn;

    Dow *In03 = *off;
      Exfmt Radio;
      Select;
        When GENDER = 1;
          CHOICE = 'MALE';

        When GENDER = 2;
          CHOICE = 'FEMALE';

        When GENDER = 3;
          CHOICE = 'OTHER';
        Endsl;
    Enddo;

    *Inlr = *On;

