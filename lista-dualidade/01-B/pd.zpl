# oposto do sinal nas restrições do primal
var w1 <= 0;
var w2 >= 0;
var w3 >= -infinity;

minimize Z :
    5*w1 + 4*w2 + 6*w3;

subto r1:
    1*w1 + 2*w2 + 0*w3 >= 2;

subto r2:
    1*w1 + 0*w2 + 6*w3 <= 3;

subto r3:
    -1*w1 + 1*w2 + 1*w3 <= -5;

subto r4:
    1*w1 + 0*w2 + 1*w3 == 0;
