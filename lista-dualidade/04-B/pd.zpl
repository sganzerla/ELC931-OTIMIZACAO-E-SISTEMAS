# oposto do sinal nas restrições do primal
var w1 >= 0;
var w2 <= 0;

maximize Z :
     2*w1 - 2*w2;

subto r1:
    1*w1 + 1*w2 >= 1;

subto r2:
    -1*w1 - 1*w2 >= -1;
 