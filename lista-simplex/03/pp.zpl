var x1 >= 0;
var x2 >= 0;
var x3 >= 0;

minimize Z:
    9*x1 + 6*x2 + 12*x3;

subto c1:
    1*x1 + 2*x2 + 1*x3 >= 4;

subto c2:
    2*x1 + 1*x2 + 1*x3 >= 5;

subto c3:
    2*x1 + 3*x2 + 2*x3 >= 6;