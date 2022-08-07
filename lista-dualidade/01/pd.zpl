# oposto do sinal nas restrições do primal
var w1 <= 0;
var w2 >= 0;
var w3 >= -infinity;

minimize Z :
    w1 + w2 + w3;

subto r1:
    w1 + 3*w2 + 5*w3 >= 4;

subto r2:
    w1 + 4*w2 + 6*w3 == 1;

subto r3:
    w1 + 8*w2 + 9*w3 <= 1;