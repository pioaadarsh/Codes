     **free
       dcl-s String char(6) ;
       dcl-s Result zoned(2) ;
       String='listen';
       Result=%check('silant' : String);
       if Result=0;
         dsply 'This is Anagram String';
       else;
         dsply 'This is not an Anagram String';
       endif;
       *inlr=*on;
