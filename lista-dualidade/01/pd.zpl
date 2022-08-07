# oposto do sinal nas restrições do primal
var w1 <= 0;
var w2 >= 0;
var w3 >= -infinity;

minimize Z :
    2*w1 + 24*w2 + 0*w3;

subto r1:
    1*w1 + 3*w2 + 5*w3 >= 4;

subto r2:
    1*w1 + 4*w2 + 6*w3 == 1;

subto r3:
    1*w1 + 8*w2 + 9*w3 <= 1;