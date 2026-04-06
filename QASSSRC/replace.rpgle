     **free
       dcl-s string1 char(50);
       dcl-s string2 char(50);
       string1='I live in mumbai, he lives in mumbai';
       string2=%scanrpl('mumbai':'jaipur':string1);
       dsply string2;
       *inlr=*on;
