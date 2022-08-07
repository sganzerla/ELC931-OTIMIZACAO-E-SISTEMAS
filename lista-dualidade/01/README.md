# 1

![image](resources/ex.png)

## Código ZIMPL

### Problema Primal `pp.zpl`

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

### Problema Dual `pd.zpl`

    # oposto do sinal nas restrições do primal
    var w1 <= 0;
    var w2 >= 0;
    var w3 >= -infinity;

    minimize Z :
        w1 + w2 + w3;

    subto r1:
        w1 + 3*w2 + 5*w3 >= 4;

    subto r2:
        w1 + 4*w2 + 6*w3 == 1;

    subto r3:
        w1 + 8*w2 + 9*w3 <= 1;

## CLI ZIMPL

Comandos para compilar arquivo *.zpl:

    zimpl file.zpl
    <!-- output  file.lp -->
    <!-- output  file.tbl -->

## CLI CPLEX

Abrir CLI CPLEX:

    cplex

Comando para ler modelo compilado do ZIMPL no CPLEX:

    r file.lp

Comando para otimizar problema lido:

    opt

Comando exibir solução:

    disp sol var *

## Solução CPLEX

### PP

![image](resources/sol-pp.jpg)

### PD

![image](resources/sol-pd.jpg)
