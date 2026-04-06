     Dnewrec         E DS                  Extname(PF2)
     D                                     Prefix(N_)
     Doldrec         E DS                  Extname(PF2)
     D                                     Prefix(O_)

        // Parm1 contains all the information about the trigger
     DParm1            DS          4096
     Dfname                    1     10
     Dlname                   11     20
     Dmname                   21     30
     Dteven                   31     31
     Dttime                   32     32
     Dcmtlck                  33     33
     Dfill1                   34     36
     Dccsid                   37     40B 0
     Dfill2                   41     48
     Doldoff                  49     52B 0
     Doldlen                  53     56B 0
     Donoff                   57     60B 0
     Donlen                   61     64B 0
     Dnewoff                  65     68B 0
     Dnewlen                  69     72B 0
     Dnnoff                   73     76B 0
     Dnnlen                   77     80B 0

       // Parm2 contains the length of that data.
     DParm2            DS             4
      *
     C     *Entry        Plist
     C                   Parm                    Parm1
     C                   Parm                    Parm2
     C                   Eval      newrec=%Subst(Parm1:newoff+1:newlen)         // After
     C                   Eval      oldrec=%Subst(Parm1:oldoff+1:oldlen)         // After

**free
    Select;
      When teven='1';
        Dsply 'Insert Successfull';
      When teven='2';
        Dsply 'Delete Successfull';
      When teven='3';
        Dsply 'Update Successfull';
      When teven='4';
        Dsply 'Fetch Successfull';
    Endsl;
    *Inlr=*On;
