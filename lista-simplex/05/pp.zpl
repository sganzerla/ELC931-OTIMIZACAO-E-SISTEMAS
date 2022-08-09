var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;

maximize Z:
    10*x1 + 24*x2 + 20*x3 + 20*x4 + 25*x5;

subto c1:
    1*x1 + 1*x2 + 2*x3 + 3*x4 + 5*x5 <= 19;

subto c2:
    2*x1 + 4*x2 + 3*x3 + 2*x4 + 1*x5 <= 57;