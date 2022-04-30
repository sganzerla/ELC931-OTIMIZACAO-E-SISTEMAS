# 13

![image](resources/ex.png)

## Código ZIMPL  file.zpl

    set fabricas := {1, 2};

    set distribuidores := {1, 2, 3, 4};

    param capacProducao[fabricas] := <1> 80000, <2> 65000;
    param demandaDistribuidor[distribuidores] := <1> 75000, <2> 20000, <3> 30000, <4> 40000; # valor distribuidor 4 colocado para teste

    param custoTransporteFabrica1[distribuidores] := <1> 50, <2> 10, <3> 70, <4> 30;
    param custoTransporteFabrica2[distribuidores] := <1> 60, <2> 40, <3> 60, <4> 20;

    param taxaProdutoNaoEntregue[distribuidores] := <1> 0.5, <2> 0.3, <3> 0.20, <4> 0.0;

    var produtosFabrica1[distribuidores] >= 0;
    var produtosFabrica2[distribuidores] >= 0; 
      
    minimize custo :

            sum <d> in distribuidores: 
                    (produtosFabrica1[d] * custoTransporteFabrica1[d] + produtosFabrica2[d] * custoTransporteFabrica2[d] ) 
            #         +
            # sum <d> in distribuidores :
            #         if ((demandaDistribuidor[d] - produtosFabrica1[d] + produtosFabrica2[d]) <= 0) then
            #                 0
            #         else
            #                 ((demandaDistribuidor[d] - produtosFabrica1[d] + produtosFabrica2[d]) * taxaProdutoNaoEntregue[d])
            #         end
                    ;

    subto limiteProducaoFabrica1:
            sum <d> in distribuidores:
                    produtosFabrica1[d] <= capacProducao[1];

    subto limiteProducaoFabrica2:
            sum <d> in distribuidores:
                    produtosFabrica2[d] <= capacProducao[2];

    subto demandaDistribuidor4:
            produtosFabrica1[4] + produtosFabrica2[4] == demandaDistribuidor[4];

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
