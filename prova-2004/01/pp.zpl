var x1 >= 0;
var x2 >= 0;
var x3 >= 0;

minimize Z:
    2*x1 + 3*x2 + 4*x3;

subto c1:
    1*x1 + 2*x2 + 1*x3 >= 3;

subto c2:
    2*x1 - 1*x2 + 3*x3 >= 4;
