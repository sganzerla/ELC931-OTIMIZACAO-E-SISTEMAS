# oposto do sinal nas restrições do primal

# vitaminas 
var w1 >= 0;   
var w2 >= 0; 

maximize Z : 
    -10*w1 + 19*w2;

# maximo do alimento 1
subto c1: 
    1*w1 + 0*w2 <= 35;
    
# maximo do alimento 2
subto c2: 
    0*w1 + 1*w2 <= 30;

# maximo do alimento 3
subto c3: 
    2*w1 + 3*w2 <= 60;

# maximo do alimento 4
subto c4: 
    2*w1 + 1*w2 <= 50; 

# maximo do alimento 5
subto c5: 
    1*w1 + 3*w2 <= 27;

# maximo do alimento 6
subto c6: 
    2*w1 + 2*w2 <= 22;