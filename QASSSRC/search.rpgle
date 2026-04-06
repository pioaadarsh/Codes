**free
  Dcl-S String varchar(7) Inz('ABCdDeE');
  Dcl-S String2 varchar(7) Inz('ABCD');
  Dcl-S Answer zoned(1);

  Answer=%Scan(String2:String);
  Dsply Answer;
  clear Answer;
  String2='AB';
  Answer=%Scan(String2:String);
  Dsply Answer;
  clear Answer;
  String2='ABd';
  Answer=%Scan(String2:String);
  Dsply Answer;
  clear Answer;
  String2='ABF';
  Answer=%Scan(String2:String);
  Dsply Answer;
  *Inlr=*On;
