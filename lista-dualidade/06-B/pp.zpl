# oposto do sinal nas restrições do dual
var x1 >= 0;
var x2 >= 0;

minimize Z:
    1*x1 + 1*x2;

subto r1:
    2*x1 + 1*x2 >= 8;

subto r2:
    3*x1 + 7*x2 >= 21;
