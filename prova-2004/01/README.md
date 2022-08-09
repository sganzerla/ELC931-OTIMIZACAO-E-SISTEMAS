# 1

![image](resources/ex.jpg)

## Código ZIMPL

### Problema Primal `pp.zpl`

    var x1 >= 0;
    var x2 >= 0;
    var x3 >= 0;

    minimize Z:
        2*x1 + 3*x2 + 4*x3;

    subto c1:
        1*x1 + 2*x2 + 1*x3 >= 3;

    subto c2:
        2*x1 - 1*x2 + 3*x3 >= 4;

![image](resources/sol-pp.jpg)

### Problema Dual `pd.zpl`

    var w1 <= 0;
    var w2 <= 0;

    maximize Z:
        3*w1 + 4*w2 ;

    subto c1:
        1*w1 + 2*w2 >= 2;

    subto c2:
        2*w1 - 1*w2 >= 3;

    subto c3:
        1*w1 + 3*w2 >= 4;

![image](resources/sol-pd.jpg)
