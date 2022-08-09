var x1 >= 0;
var x2 >= 0;
var x3 >= 0;

maximize Z:
    2*x1 + 10*x2 + 5*x3;

subto c1:
    3*x1 + 10*x2 + 5*x3 <= 15;

subto c2:
    33*x1 -10*x2 + 9*x3 <= 33;

subto c3:
    1*x1 + 2*x2 + 1*x3 >= 4;