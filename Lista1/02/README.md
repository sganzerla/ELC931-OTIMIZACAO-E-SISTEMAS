# 2

![image](resources/ex.png)

## Código ZIMPL  file.zpl

    set indice := {1, 2, 3};
 
    param custoAlimentoKgReais[indice] := <1> 0.21, <2> 0.18, <3> 0.15;

    var quantAlimentoKG[indice] >= 0;

    minimize custo: sum<i> in indice : custoAlimentoKgReais[i] * quantAlimentoKG[i];

    subto carboidratos: quantAlimentoKG[1] + quantAlimentoKG[2] + quantAlimentoKG[3] >= 200;

    subto proteinas: quantAlimentoKG[1] + quantAlimentoKG[2] + quantAlimentoKG[3] >= 180 ;

    subto vitaminas: quantAlimentoKG[1] + quantAlimentoKG[2] + quantAlimentoKG[3] >= 150;

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
