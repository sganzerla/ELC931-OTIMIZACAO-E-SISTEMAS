# oposto do sinal nas restrições do primal

var w1 >= 0; # vitamina A
var w2 >= 0; # vitamina C
var w3 >= 0; # vitamina D

# maximizar a quantidade de vitaminas
maximize Z : 
    5*w1 + 50*w2 + 10*w3;

# valor maximo com verduras
subto c1: 
    10*w1 + 10*w2 + 10*w3 <= 50;
    
# valor maximo com batatas
subto c2:
    1*w1 + 10*w2 + 11*w3 <= 100;

# valor maximo com milho
subto c3:
    9*w1 + 10*w2 + 11*w3 <= 51;