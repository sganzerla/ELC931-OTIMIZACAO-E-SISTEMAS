# oposto do sinal nas restrições do dual
var x1 >= 0;
var x2 >= 0;

minimize Z:
    1*x1 + 1*x2;

subto r1:
    1*x1 - 1*x2 <= 2;

subto r2:
    1*x1 - 1*x2 >= -2;