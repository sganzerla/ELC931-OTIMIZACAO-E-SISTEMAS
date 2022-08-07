# 6-C

![image](resources/ex.jpg)

## Código ZIMPL

### Problema Primal `pp.zpl`

    # oposto do sinal nas restrições do dual
    var x1 >= 0;
    var x2 >= 0;
    var x3 >= 0;

    minimize Z:
        2*x1 + 3*x2 + 4*x3;

    subto r1:
        1*x1 + 2*x2 + 1*x3 >= 3;

    subto r2:
        2*x1 - 1*x2 + 1*x3 >= 4;

### Problema Dual `pd.zpl`

    # oposto do sinal nas restrições do primal
    var w1 <= 0;
    var w2 <= 0;

    maximize Z :
        3*w1 + 4*w2;

    subto r1:
        1*w1 + 2*w2 >= 2;

    subto r2:
        2*w1 - 1*w2 >= 3;

    subto r3:
        1*w1 + 1*w2 >= 4;

## Solução CPLEX

### PP

![image](resources/sol-pp.jpg)

### PD

![image](resources/sol-pd.jpg)
