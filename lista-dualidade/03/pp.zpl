# oposto do sinal nas restrições do dual
var x1 >= 0; 
var x2 >= -infinity;
var x3 <= 0;

maximize Z : 
    4*x1 + 1*x2 + 5*x3;
 
subto r1: 
    1*x1 + 1*x2 + 7*x3 >= 10;

subto r2:
    3*x1 + 4*x2 + 8*x3 >= 11;

subto r3:
    5*x1 + 6*x2 + 9*x3 >= 12;