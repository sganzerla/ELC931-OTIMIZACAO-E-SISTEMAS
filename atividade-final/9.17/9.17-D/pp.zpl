# oposto do sinal nas restrições do dual

# tipos de solventes
var x2 >= 0;   
var x3 >= 0; 
var x5 >= 0; 

# reduzir o custo
minimize Z : 
     12*x2 + 11*x3 + 0*x5;

# mínimo mistura química 1
subto c1: 
    120*x2 + 90*x3 - 1*x5 >= 90;
    
# máximo mistura química 2
subto c2:
    2*x2 + 6*x3 + 0*x5 <= 4;
