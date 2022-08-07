# oposto do sinal nas restrições do dual
var x1 >= 0;
var x2 >= 0;
var x3 >= 0;

minimize Z:
    8*x1 + 7*x2 + 3*x3;

subto r1:
    2*x1 + 1*x2 + 0*x3 >= 4;

subto r2:
    1*x1 + 2*x2 + 1*x3 >= 5;
