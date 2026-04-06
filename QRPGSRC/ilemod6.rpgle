       Ctl-Opt DFTACTGRP(*NO);

       Dcl-PI ILEMOD6;
         Name           Char(20);
         Department     Char(20);
         Age            Zoned(10:0);
        End-PI;

       Name = 'Aadarsh Ajmera';
       Department = 'CSE';
       Age = 25;
       *Inlr = *On;
       Return;
