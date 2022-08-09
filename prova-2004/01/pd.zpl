var w1 <= 0;
var w2 <= 0;

maximize Z:
    3*w1 + 4*w2 ;

subto c1:
    1*w1 + 2*w2 >= 2;

subto c2:
    2*w1 - 1*w2 >= 3;

subto c3:
    1*w1 + 3*w2 >= 4;
 