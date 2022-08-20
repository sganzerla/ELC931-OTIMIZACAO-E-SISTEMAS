# 9.18-C

![image](../../resources/9-18.PNG)

<!-- ## Resolução com planilhas

### Problema Primal

![image](resources/pp-planilha.jpg)

### Problema Dual

![image](resources/pd-planilha.jpg) -->

## Resolução com solver ZIMPL e CPLEX

### Problema Primal `pp.zpl`

    # oposto do sinal nas restrições do dual

    var x1 >= 0; # produto 1
    var x2 >= 0; # produto 2
    var x3 >= 0; # produto 3
    var x4 >= 0; # produto 4

    # reduzir o custo
    minimize Z : 
        -2*x1 - 4*x2 - 1*x3 - 1*x4;

    # mínimo material 1
    subto c1: 
        1*x1 + 3*x2 + 0*x3 + 1*x4 <= 8;
        
    # mínimo material 2
    subto c2:
        2*x1 + 1*x2 + 0*x3 + 0*x4 <= 6;

    # mínimo material 3
    subto c3:
        0*x1 + 1*x2 + 4*x3 + 1*x4 <= 6;

![image](resources/pp.jpg)

### Problema Dual `pd.zpl`

    # oposto do sinal nas restrições do primal

    var w1 >= 0; # materia prima 1
    var w2 >= 0; # materia prima 2
    var w3 >= 0; # materia prima 3

    # maximizar a quantidade de produtos
    maximize Z : 
        8*w1 + 8*w2 + 6*w3;

    subto c1: 
        1*w1 + 2*w2 + 0*w3 <= -2;
        
    subto c2:
        3*w1 + 1*w2 + 1*w3 <= -4;

    subto c3:
        0*w1 + 0*w2 + 4*w3 <= -1;

    subto c4:
        1*w1 + 0*w2 + 1*w3 <= -1;

![image](resources/pd.jpg)
