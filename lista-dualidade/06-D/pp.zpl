# oposto do sinal nas restrições do dual
var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;

minimize Z:
    2*x1 + 3*x2 + 5*x3 + 6*x4;

subto r1:
    1*x1 + 2*x2 + 3*x3 + 1*x4 >= 2;

subto r2:
    -2*x1 + 1*x2 - 1*x3 + 3*x4 <= -3;
