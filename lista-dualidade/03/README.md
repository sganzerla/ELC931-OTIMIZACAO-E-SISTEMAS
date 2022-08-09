# 3

![image](resources/ex.jpg)

## Código ZIMPL

### Problema Primal `pp.zpl`

    # oposto do sinal nas restrições do dual
    var x1 >= 0;
    var x2 >= 0;

    maximize Z:
        2*x1 + 3*x2;

    subto r1:
        1*x1 + 1*x2 <= 5;

    subto r2:
        2*x1 + 3*x2 <= 12;

![image](resources/sol-pp.jpg)

### Problema Dual `pd.zpl`

    # oposto do sinal nas restrições do primal
    var w1 >= 0;
    var w2 >= 0;

    minimize Z :
        5*w1 + 12*w2;

    subto r1:
        1*w1 + 2*w2 >= 2;

    subto r2:
        1*w1 + 3*w2 >= 3;

![image](resources/sol-pd.jpg)
