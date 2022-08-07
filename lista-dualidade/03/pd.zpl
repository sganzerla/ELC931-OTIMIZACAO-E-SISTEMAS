# oposto do sinal nas restrições do primal
var w1 >= 0;
var w2 >= 0;

minimize Z :
     5*w1 + 12*w2;

subto r1:
    1*w1 + 2*w2 >= 2;

subto r2:
    1*w1 + 3*w2 >= 3;
 