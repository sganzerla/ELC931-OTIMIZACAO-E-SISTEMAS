# oposto do sinal nas restrições do primal
var w1 >= 0;
var w2 >= 0;

minimize Z :
     3*w1 + 3*w2;

subto r1:
    1*w1 + 1*w2 >= 1;

subto r2:
    -2*w1 + 1*w2 >= 2;
 