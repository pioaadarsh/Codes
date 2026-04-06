     **free
       dcl-s String char(30);
       dcl-s Substr char(30);
       dcl-s Count zoned(10);
       dcl-s I zoned(10);
       dcl-s Pos zoned(10);
       dsply 'Enter the string' ''String;
       Pos=%scanr('/':String);
       Substr=%subst(String:Pos+1);
       dsply Substr;
       *inlr=*on;
