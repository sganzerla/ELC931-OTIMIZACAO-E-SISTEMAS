# 2

![image](resources/ex.jpg)

## Código ZIMPL

### Problema Primal `pp.zpl`

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

### Problema Dual `pd.zpl`

    # oposto do sinal nas restrições do primal
    var w1 <= 0;
    var w2 <= 0;
    var w3 <= 0;

    minimize Z :
        10*w1 + 11*w2 + 12*w3;

    subto r1:
        1*w1 + 3*w2 + 5*w3 >= 4;

    subto r2:
        1*w1 + 4*w2 + 6*w3 == 1;

    subto r3:
        7*w1 + 8*w2 + 8*w3 <= 5;

## Solução CPLEX

### PP

![image](resources/sol-pp.jpg)

### PD

![image](resources/sol-pd.jpg)
