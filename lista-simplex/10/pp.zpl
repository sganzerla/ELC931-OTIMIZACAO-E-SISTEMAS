var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
maximize Z:
    1*x1 + 2*x2;

subto c1:
    2*x1 + 3*x2 + 0*x3 == 5;

subto c2:
    6*x1 + 9*x2 + 0*x3 == 15;

subto c3:
    -1*x1 + 1*x2 + 1*x3 == 0;