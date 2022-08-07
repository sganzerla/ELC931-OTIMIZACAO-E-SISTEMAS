# oposto do sinal nas restrições do dual
var x1 >= 0; 
var x2 >= 0;

maximize Z: 
    2*x1 + 3*x2;
 
subto r1: 
    1*x1 + 1*x2 <= 5;

subto r2:
    2*x1 + 3*x2 <= 12;