       dcl-s num1 zoned(10);
       dcl-s num2 zoned(10);
       dsply 'enter the value of first number' '*EXT' num1;
       dsply 'enter the value of second number' '*EXT' num2;
       dsply (num1+num2);
       *inlr=*on;
