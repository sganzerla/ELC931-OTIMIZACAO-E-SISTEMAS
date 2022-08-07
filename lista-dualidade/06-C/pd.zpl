# oposto do sinal nas restrições do primal
var w1 <= 0;
var w2 <= 0;

maximize Z :
     3*w1 + 4*w2;

subto r1:
    1*w1 + 2*w2 >= 2;

subto r2:
    2*w1 - 1*w2 >= 3;

subto r3:
    1*w1 + 1*w2 >= 4;
