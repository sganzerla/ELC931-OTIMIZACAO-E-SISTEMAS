# oposto do sinal nas restrições do dual

var x1 >= 0; # produto 1
var x2 >= 0; # produto 2
var x3 >= 0; # produto 3
var x4 >= 0; # produto 4

# reduzir o custo
minimize Z : 
    -2*x1 - 4*x2 - 1*x3 - 1*x4;

# mínimo material 1
subto c1: 
    1*x1 + 3*x2 + 0*x3 + 1*x4 <= 8;
    
# mínimo material 2
subto c2:
    2*x1 + 1*x2 + 0*x3 + 0*x4 <= 8;

# mínimo material 3
subto c3:
    0*x1 + 1*x2 + 4*x3 + 1*x4 <= 6;