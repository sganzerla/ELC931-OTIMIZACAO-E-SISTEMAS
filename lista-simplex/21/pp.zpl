var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
var x6 >= 0;

minimize z:
    1*x1 + 2*x2 - 4*x3 + 0*x4 + 0*x5 + 0*x6;

subto c1:
    -1*x1 + 1*x2 + 2*x3 + 1*x4 + 0*x5 + 0*x6 == 6;

subto c2:
    1*x1 + 1*x2 - 1*x3 + 0*x4 + 1*x5 + 0*x6 == 2;

subto c3:
    -1*x1 + 1*x2 + 1*x3 + 0*x4 + 0*x5 + 1*x6 == 2;