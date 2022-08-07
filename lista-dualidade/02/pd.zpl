# oposto do sinal nas restrições do primal
var w1 <= 0;
var w2 <= 0;
var w3 <= 0;

minimize Z :
    10*w1 + 11*w2 + 12*w3;

subto r1:
    1*w1 + 3*w2 + 5*w3 >= 4;

subto r2:
    1*w1 + 4*w2 + 6*w3 == 1;

subto r3:
    7*w1 + 8*w2 + 8*w3 <= 5;