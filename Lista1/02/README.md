# 2

![image](resources/ex.png)

## Código ZIMPL  file.zpl

    # nutriente
    # carboidrato, proteina, vitamina
    set n := { 1 to 3};

    # alimento
    # milho, silagem, alfafa
    set a := { 1 to 3};

    # nutriente * alimento
    set na := n*a;

    # custo do alimento por kilo em reais
    param C[a] := <1> 0.21, <2> 0.18, <3> 0.15;

    # consumo de nutrientes mínimo por alimento por dia
    param M[a] := <1> 200, <2> 180, <3> 150;

    # quantidade de nutrientes em cada kilo de alimento
    param NA[na] :=     
                    <1,1> 90, <1,2> 20, <1,3> 40,
                    <2,1> 30, <2,2> 80, <2,3> 60, 
                    <3,1> 10, <3,2> 20, <3,3> 60;  

    var X[a] >= 0;

    minimize custo :
        sum <ax> in a: C[ax] * X[ax];

    # minimo de nutrientes  
    subto c1:
        forall <nx> in n:
            sum <ax> in a: 
                NA[nx,ax] * X[ax] >= M[nx]; 

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

![image](resources/sol.png)
