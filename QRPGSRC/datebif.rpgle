**free
    Dcl-S CurrDate Date;
    Dcl-S NewDate Date;
    Dcl-S PrevDate Date;

    Dcl-S NewMonth Date;
    Dcl-S PrevMonth Date;

    Dcl-S NewYear Date;
    Dcl-S PrevYear Date;

    CurrDate=%Date();
    Dsply CurrDate;

    NewDate=CurrDate+%Days(20);
    Dsply NewDate;

    PrevDate=CurrDate-%Days(12);
    Dsply PrevDate;

    NewMonth=CurrDate+%months(5);
    Dsply NewMonth;

    PrevMonth=CurrDate-%months(2);
    Dsply PrevMonth;

    NewYear=CurrDate+%years(2);
    Dsply NewYear;

    PrevYear=CurrDate-%years(8);
    Dsply PrevYear;

    *Inlr=*On;
