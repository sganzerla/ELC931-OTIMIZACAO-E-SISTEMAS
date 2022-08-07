# oposto do sinal nas restrições do primal
var w1 <= 0;
var w2 >= 0;

minimize Z :
     4*w1 + 3*w2;

subto r1:
    1*w1 + 1*w2 >= 3;

subto r2:
    -2*w1 + 1*w2 >= 4;
 