**free
  dcl-s num zoned(2);
  dcl-s i zoned(2);
  dcl-s stars varchar(10) Inz('');
  dsply 'Enter the lines' ''num;
  for i=1 to num;
    stars+='*';
    dsply stars;
  endfor;
  *inlr=*on;
