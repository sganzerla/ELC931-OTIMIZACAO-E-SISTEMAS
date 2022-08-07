# oposto do sinal nas restrições do primal
var w1 <= 0;
var w2 <= 0;

minimize Z :
    25*w1 + 20*w2;

subto r1:
    6*w1 + 3*w2 >= 3;

subto r2:
    3*w1 + 4*w2 >= 1;

subto r3:
    5*w1 + 5*w2 >= 4;