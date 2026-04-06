**free

   Ctl-opt DftActGrp(*no) ActGrp(*new);

// Procedure for opening file

   Dcl-pr Open int(10) ExtProc('open');
      *n Pointer value options(*string); // File path
      *n int(10) Value;                  // File Option
      *n uns(10) Value Options(*nopass); // length of data
   End-pr;

// Procedure for read data from file

   Dcl-pr Read int(10) ExtProc('read');
      *n int(10) Value;                  // File Pointer
      *n Pointer value;                   // Pointer to data
      *n uns(10) Value ;                  // length of data
   End-pr;

// Constant  and standalone variable declaration

   Dcl-c ReadFile              1;
   Dcl-s Output          int(10);
   Dcl-s Length          int(10);
   Dcl-s Data           char(52);


// Procedure for closing file

   Dcl-pr close int(10) ExtProc('close');
       *n int(10) Value;                  // File Pointer
   End-pr;


// File Opening

    Output =open('/home/AADARSH/firstdir/firstfile.txt':
      ReadFile:
    25);
    If Output < 0;
      Dsply 'IFS file could not be opened';
      *Inlr=*on;
    EndIf;

// Reading File

    Length = Read(Output : %addr(Data) : %Size (Data));
    Dsply Data;


// File Closing

    Callp Close(Output);

    *inlr = *on;




