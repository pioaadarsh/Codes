     DDATE_1           S              8    inz('11/12/01')
     DDATE_2           S             10    INZ('12/02/2011')
     DDATE_3           S              8    inz('12/03/11')
     Ddate_4           S               D   inz(D'2011-12-04')
     Dnum_A            S              6  0 inz(111205)
     Dnum_B            S              7  0 inz(1111206)
     Dnum_C            S              8  0 inz(20111207)
     Dnum_D            S              6  0 inz(120811)
     Dnum_E            S              8  0 inz(12092011)

       //free
       //character to character.....
       DATE_2= %char(%date(DATE_1:*ymd/):*USA/);
       reset DATE_2;
       DATE_3= %char(%date(DATE_1:*ymd/):*mdy/);
       reset DATE_3;
       DATE_1= %char(%date(DATE_2:*usa/):*ymd/);
       reset DATE_1;
       DATE_3= %char(%date(DATE_2:*usa/):*mdy/);
       reset DATE_3;
       DATE_1= %char(%date(DATE_3:*mdy/):*ymd/);
       reset DATE_1;
       DATE_2= %char(%date(DATE_3:*mdy/):*usa/);
       reset DATE_2;

       //character to date.....
       DATE_1=%date(DATE_1:*ymd/);
       reset DATE_1;
       DATE_1=%date(DATE_2:*usa/);
       reset DATE_1;
       DATE_1=%date(DATE_3:*mdy/);
       reset DATE_1;

       //Numeric to NUmeric .....
       num_B=%dec(%char(%date(num_A:*ymd):*cymd0):7:0);
       reset num_B;
       num_C=%dec(%char(%date(num_A:*ymd):*iso0):8:0);
       reset num_C;
       num_D=%dec(%char(%date(num_A:*ymd):*mdy0):6:0);
       reset num_D;
       num_E=%dec(%char(%date(num_A:*ymd):*usa0):8:0);
       reset num_E;
       num_A=%dec(%char(%date(num_B:*cymd):*ymd0):6:0);
       reset num_A;
       num_C=%dec(%char(%date(num_B:*cymd):*iso0):8:0);
       reset num_C;
       num_D=%dec(%char(%date(num_B:*cymd):*mdy0):6:0);
       reset num_D;
       num_E=%dec(%char(%date(num_B:*cymd):*usa0):8:0);
       reset num_E;
       num_A=%dec(%char(%date(num_C:*iso):*ymd0):6:0);
       reset num_A;
       num_B=%dec(%char(%date(num_C:*iso):*cymd0):7:0);
       reset num_B;
       num_D=%dec(%char(%date(num_C:*iso):*mdy0):6:0);
       reset num_B;
       num_E=%dec(%char(%date(num_C:*iso):*usa0):8:0);
       reset num_E;
       num_A=%dec(%char(%date(num_D:*mdy):*ymd0):6:0);
       reset num_A;
       num_B=%dec(%char(%date(num_D:*mdy):*cymd0):7:0);
       reset num_B;
       num_C=%dec(%char(%date(num_D:*mdy):*iso0):8:0);
       reset num_C;
       num_E=%dec(%char(%date(num_D:*mdy):*usa0):8:0);
       reset num_E;
       num_A=%dec(%char(%date(num_E:*usa):*ymd0):6:0);
       reset num_A;
       num_B=%dec(%char(%date(num_E:*usa):*cymd0):7:0);
       reset num_B;
       num_C=%dec(%char(%date(num_E:*usa):*iso0):8:0);
       reset num_C;
       num_D=%dec(%char(%date(num_E:*usa):*mdy0):6:0);
       reset num_D;

       //*NUMERIC TO CHARACTER**************
       DATE_1=%Char(%Date(num_A:*ymd):*ymd/);
       reset DATE_1;
       DATE_2=%char(%date(num_A:*ymd):*usa/);
       reset DATE_2;
       DATE_3=%char(%date(num_A:*ymd):*mdy/);
       reset DATE_3;
       DATE_1=%char(%date(num_B:*cymd):*ymd/);
       reset DATE_1;
       DATE_2=%char(%date(num_B:*cymd):*usa/);
       reset DATE_2;
       DATE_3=%char(%date(num_B:*cymd):*mdy/);
       reset DATE_3;
       DATE_1=%char(%date(num_C:*iso):*ymd/);
       reset DATE_1;
       DATE_2=%char(%date(num_C:*iso):*usa/);
       reset DATE_2;
       DATE_3=%char(%date(num_C:*iso):*mdy/);
       reset DATE_3;
       DATE_1=%char(%date(num_D:*mdy):*mdy/);
       reset DATE_1;
       DATE_2=%char(%date(num_D:*mdy):*USA/);
       reset DATE_2;
       DATE_3=%char(%date(num_D:*mdy):*ymd/);
       reset DATE_3;
       DATE_1=%char(%date(num_E:*usa):*ymd/);
       reset DATE_1;
       DATE_2=%char(%date(num_E:*USA):*ISO-);
       reset DATE_2;
       DATE_3=%char(%date(num_E:*usa):*mdy/);
       reset DATE_3;
       *inlr =*on;
