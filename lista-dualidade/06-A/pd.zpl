# oposto do sinal nas restrições do primal
var w1 <= 0;
var w2 <= 0;

maximize Z :
     4*w1 + 5*w2;

subto r1:
    2*w1 + 1*w2 >= 8;

subto r2:
    1*w1 + 2*w2 >= 7;

subto r3:
    0*w1 + 1*w2 >= 3;
 