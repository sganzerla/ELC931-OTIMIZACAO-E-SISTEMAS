var x >= -infinity;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;

minimize Z:
    14*x - 18*x3 - 16*x4 - 80*x5;

subto c1:
    -4.5*x - 8.5*x3 + 6*x4 + 20*x5 <= 6000;

subto c2:
    1*x + 1*x3 + 4*x4 + 40*x5 <= 4000;
