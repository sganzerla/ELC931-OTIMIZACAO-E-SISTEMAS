# 7

![image](resources/ex.png)

## Código ZIMPL  file.zpl

    # Guarulho, Viracopos, Galeão, Confins
    set aeroportos := {1, 2, 3, 4};

    set ciaAerea := {1, 2, 3};

    param maxCombustivel[ciaAerea] := <1> 250000, <2> 500000, <3> 600000;

    param consumoCombustivel[aeroportos] := <1> 100000, <2> 200000, <3> 300000, <4> 400000;

    param custoCia1[aeroportos] := <1> 12, <2> 10, <3> 8, <4> 11;
    param custoCia2[aeroportos] := <1> 9, <2> 11, <3> 11, <4> 13;
    param custoCia3[aeroportos] := <1> 10, <2> 14, <3> 13, <4> 9; 

    var quantCia1[aeroportos] integer >=0;
    var quantCia2[aeroportos] integer >=0;
    var quantCia3[aeroportos] integer >=0;


    minimize custo : 
        (sum <i> in aeroportos : quantCia1[i] * custoCia1[i]) +
        (sum <i> in aeroportos : quantCia2[i] * custoCia2[i]) +
        (sum <i> in aeroportos : quantCia3[i] * custoCia3[i]) ;
    
    subto limiteCombustivelDistribuido :
        forall <c> in ciaAerea :
            sum <i> in aeroportos : quantCia1[i] <= maxCombustivel[c];

    subto minimoCombustivel :
        forall <i> in aeroportos :
            quantCia1[i] + quantCia2[i] + quantCia3[i] >= consumoCombustivel[i];

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
