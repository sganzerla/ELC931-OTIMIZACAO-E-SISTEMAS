# oposto do sinal nas restrições do primal
# misturas quimicas
var w1 <= 0; 
var w2 >= 0; 

# maximizar a quantidade de misturas quimicas
maximize Z : 
    90*w1 + 4*w2;

# valor maximo do solvente 1
subto c1: 
    120*w1 + 2*w2  <= 12;
    
#  valor maximo do solvente 2
subto c2:
    90*w1 + 6*w2  <= 11;

#  valor maximo do solvente 3
subto c3:
    -1*w1 + 0*w2  <= 0;