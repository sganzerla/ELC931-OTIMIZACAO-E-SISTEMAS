# 1

![image](resources/ex.jpg)

## Código ZIMPL

### Problema Primal `pp.zpl`

    var x1 >= 0;
    var x2 >= 0;

    maximize Z:
        3*x1 + 1*x2;

    subto c1:
        1*x1 + 2*x2 <= 4;

    subto c2:
        1*x1 - 1*x2 <= 5;

![image](resources/sol.jpg)
