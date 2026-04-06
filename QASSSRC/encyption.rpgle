     DNormal           C                   'abcdefghijklmnopqrstuvwxyz123456789'
     DEncrypt          C                   'qwertyuiopASDFGHJKL12345zxcvbnm6789'
     DPassword         S             15A
     DResult           S             15A
     **
     C                   Dsply                   Password
     C     Normal:EncryptXlate     Password:1    Result
     C     Result        Dsply
     C                   Eval      *Inlr=*On
