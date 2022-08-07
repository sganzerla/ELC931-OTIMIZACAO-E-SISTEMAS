# oposto do sinal nas restrições do primal
var w1 >= 0;
var w2 <= 0;
var w3 >= -infinity;

maximize Z :
     8*w1 + 10*w2 + 6*w3;

subto r1:
    2*w1 + 1*w2 + -1*w3 >= 3;

subto r2:
    2*w1 + 5*w2 + 3*w3 >= 2;
 