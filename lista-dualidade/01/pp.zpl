# oposto do sinal nas restrições do dual
var x1 >= 0; 
var x2 >= -infinity;
var x3 <=0;

maximize Z : 
    4*x1 + x2 + x3;
 
subto r1: 
    x1 + x2 + x3 >= 2;

subto r2:
    3*x1 + 4*x2 + 8*x3 <= 24;

subto r3:
    5*x1 + 6*x2 + 9*x3 == 0;