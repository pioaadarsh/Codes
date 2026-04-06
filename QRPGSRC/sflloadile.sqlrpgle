
          Ctl-Opt dftactgrp(*no) bnddir('DIR5');
          Dcl-Pr ClearPr;
          end-pr;
          Dcl-Pr Load;
          end-pr;
          Dcl-Pr Display;
          end-pr;
          Exec Sql set option commit=*none;
             ClearPr();
             Load();
             Display();
             *Inlr=*On;
