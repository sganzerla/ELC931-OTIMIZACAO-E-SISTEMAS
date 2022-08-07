# oposto do sinal nas restrições do dual
var x1 >= 0;
var x2 >= 0;

minimize Z:
    3*x1 + 2*x2;

subto r1:
    2*x1 + 2*x2 <= 8;

subto r2:
    1*x1 + 5*x2 >= 10;

subto r3:
    -1*x1 + 3*x2 == 6;