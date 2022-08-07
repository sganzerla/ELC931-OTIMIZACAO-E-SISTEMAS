# oposto do sinal nas restrições do primal
var w1 >= 0;
var w2 <= 0;
var w3 >= 0;

minimize Z :
     28*w1 + 42*w2 + 0*w3;

subto r1:
    2*w1 + 2*w2 + 1*w3 >= 6;

subto r2:
    3*w1 + 5*w2 - 1*w3 >= 3;
 