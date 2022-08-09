var x1 >= 0;
var x2 >= 0;

maximize Z:
    3*x1 + 2*x2;

subto c1:
    1*x1 - 2*x2 <= 4;

subto c2:
    -1*x1 + 1*x2 <= 1;

subto c3:
    1*x1 - 1*x2 <= 5;
    