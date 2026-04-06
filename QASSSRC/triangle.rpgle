     **free
       dcl-s num zoned(10);
       dcl-s i zoned(10);
       dcl-s j zoned(10);
       dsply 'Enter the number' ''num;
       for i=1 to num;
         for j=1 to i;
           dsply '*';
           j=j+1;
         endfor;
         dsply '\n';
         i=i+1;
       endfor;
       *inlr=*on;
