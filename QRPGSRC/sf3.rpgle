     H Option(*NoDebugIO : *SrcStmt)
     FDsplypf   IF   E           K DISK
     FDsply_sfl CF   E             Workstn Sfile(Sfldtl:rrnn) Indds(Inds1)

     DInds1            DS
     DExit                            1n   overlay(inds1:3)
     DSfldsp                          1n   overlay(inds1:31)
     DSfldspctl                       1n   overlay(inds1:32)
     DSflclr                          1n   overlay(inds1:33)
     DSflend                          1n   overlay(inds1:34)
     DCancel                          1n   overlay(inds1:12)

     DRrnn             S              5S 0


     C                   Dow       Exit=*Off And Cancel=*Off
     C                   Exsr      Sfl_Clear
     C                   Exsr      Sfl_Load
     C                   Exsr      Sfl_Display

     C                   If        Exit=*On
     C                   Leave
     C                   Endif
     C                   Enddo
     C                   Seton                                        LR

     C     Sfl_Clear     Begsr
     C                   Eval      Rrnn=0
     C                   Eval      Sflclr=*On
     C                   Write     Sflctl1
     C                   Eval      Sflclr=*Off
     C                   Endsr

     C     Sfl_Load      Begsr
     C     *Loval        Setll     DSPLYPF
     C                   Read      DSPLYPF
     C                   Dow       NOT %EOF(DSPLYPF)
     C                   Eval      Rrnn=Rrnn+1
     C                   Movel     EMP_ID        SFLID
     C                   Movel     EMP_NAME      SFLNAME
     C                   Move      EMP_SAL       SFLSALARY
     C                   Move      EMP_DOB       SFLDATE
     C                   If        Rrnn>9999
     C                   Leavesr
     C                   Endif
     C                   Write     Sfldtl
     C                   Read      Dsplypf
     C                   Enddo
     C                   Eval      Sflend=*On
     C                   Endsr

     C     Sfl_Display   Begsr
     C                   Dow       Cancel=*Off
     C                   Eval      Sfldsp=*On
     C                   Eval      Sfldspctl=*On
     C                   Eval      Sflend=*On
     C                   If        Rrnn<1
     C                   Eval      Sfldsp=*On
     C                   Endif
     C                   Eval      Frtkey='F3=Exit  F12=Cancel'
     C                   Write     Header
     C                   Write     Footer
     C                   Exfmt     Sflctl1
     C                   Select
     C                   When      Exit=*On
     C                   Leavesr
     C                   Endsl
     C                   Enddo
     C                   Endsr
