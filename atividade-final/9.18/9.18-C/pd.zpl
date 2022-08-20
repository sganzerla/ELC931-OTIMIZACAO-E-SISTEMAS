# oposto do sinal nas restrições do primal

var w1 >= 0; # materia prima 1
var w2 >= 0; # materia prima 2
var w3 >= 0; # materia prima 3

# maximizar a quantidade de produtos
maximize Z : 
    15*w1 + 8*w2 + 6*w3;

subto c1: 
    1*w1 + 2*w2 + 0*w3 <= -2;
    
subto c2:
    3*w1 + 1*w2 + 1*w3 <= -4;

subto c3:
    0*w1 + 0*w2 + 4*w3 <= -1;

subto c4:
    1*w1 + 0*w2 + 1*w3 <= -1;