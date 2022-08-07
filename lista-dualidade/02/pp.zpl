# oposto do sinal nas restrições do dual
var x1 >= 0; 
var x2 <= 0;
var x3 <= 0;
var x4 >= -infinity;

maximize Z : 
    2*x1 + 3*x2 - 5*x3 + 0*x4;
 
subto r1: 
    1*x1 + 1*x2 - 1*x3 + 1*x4 >= 5;

subto r2:
    2*x1 + 0*x2 + 1*x3 + 0*x4 <= 4;

subto r3:
    0*x1 + 6*x2 + 1*x3 + 1*x4 == 6;