**free

   Ctl-opt DftActGrp(*no) ActGrp(*new);
// Procedure for opening file

   Dcl-pr Open int(10) ExtProc('open');
      *n Pointer value options(*string); // File path
      *n int(10) Value;                  // File Option
   End-pr;

// Procedure for writing data into file

   Dcl-pr write int(10) ExtProc('write');
      *n int(10) Value;                  // File Pointer
      *n Pointer value;                   // Pointer to data
      *n uns(10) Value ;                  // length of data
   End-pr;

// Procedure for closing file

   Dcl-pr close int(10) ExtProc('close');
       *n int(10) Value;                  // File Pointer
   End-pr;

// Constant declaration

     Dcl-c WriteFile      2;
     Dcl-c CreateFile     8;
     Dcl-c AppendFile     256;
     Dcl-c ClearFile      64;

// Variable Declaration

     Dcl-S Output int(10);
     Dcl-s Content char(30);

// File Opening

     Output =open('/home/AADARSH/firstdir/firfile.txt'
     : CreateFile+WriteFile+AppendFile);
     If Output < 0;
       Dsply 'Error';
     else;
       Content = 'Welcome to Programmers.io';

// File Writing

       callp write(Output:%addr(Content):25);

// File Closing

       Callp Close(Output);

     EndIf;

     *inlr = *on;
