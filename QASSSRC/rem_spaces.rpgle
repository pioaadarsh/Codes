     **free
       dcl-s string1 char(20);
       dcl-s string2 char(20);
       string1='A RN A  B';
       string2=%scanrpl(' ':'':string1);
       dsply string2;
       *inlr=*on;
