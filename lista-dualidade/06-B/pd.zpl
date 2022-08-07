# oposto do sinal nas restrições do primal
var w1 <= 0;
var w2 <= 0;

maximize Z :
     8*w1 + 21*w2;

subto r1:
    2*w1 + 3*w2 >= 1;

subto r2:
    1*w1 + 7*w2 >= 1;
