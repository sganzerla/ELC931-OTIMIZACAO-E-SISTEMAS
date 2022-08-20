# oposto do sinal nas restrições do dual

var x1 >= 0; # verdura
var x2 >= 0; # batata
var x3 >= 0; # milho

# reduzir o custo
minimize Z : 
    50*x1 + 100*x2 + 51*x3;

# mínimo vitamina A
subto c1: 
    10*x1 + 1*x2 + 9*x3 >= 5;
    
# mínimo vitamina B
subto c2:
    10*x1 + 10*x2 + 10*x3 >= 50;

# mínimo vitamina C
subto c3:
    10*x1 + 11*x2 + 11*x3 >= 10;