# 2

![image](resources/ex.jpg)

## Código ZIMPL

### Problema Primal `pp.zpl`

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

### Problema Dual `pd.zpl`

    # oposto do sinal nas restrições do primal
    var w1 <= 0;
    var w2 >= 0;
    var w3 >= -infinity;

    minimize Z :
        5*w1 + 4*w2 + 6*w3;

    subto r1:
        1*w1 + 2*w2 + 0*w3 >= 2;

    subto r2:
        1*w1 + 0*w2 + 6*w3 <= 3;

    subto r3:
        -1*w1 + 1*w2 + 1*w3 <= -5;

    subto r4:
        1*w1 + 0*w2 + 1*w3 == 0;

## Solução CPLEX

### PP

![image](resources/sol-pp.jpg)

### PD

![image](resources/sol-pd.jpg)
