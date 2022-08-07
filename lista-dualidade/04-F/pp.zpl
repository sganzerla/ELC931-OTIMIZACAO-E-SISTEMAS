# oposto do sinal nas restrições do dual
var x1 >= 0;
var x2 >= 0;

maximize Z:
    6*x1 + 3*x2;

subto r1:
    2*x1 + 3*x2 <= 28;

subto r2:
    2*x1 + 5*x2 <= 42;

subto r3:
    1*x1 - 1*x2 <= 0;