# Lista sobre dualidade e dual-simplex

Repositório para resolução das listas de problemas de programação linear.

## Exercícios

* [Exercício 1](01/README.md)
* [Exercício 3](03/README.md)
* [Exercício 5](05/README.md)
* [Exercício 6](06/README.md)
* [Exercício 10](10/README.md)
* [Exercício 11](11/README.md)
* [Exercício 12](12/README.md)
* [Exercício 14](14/README.md)
* [Exercício 15](15/README.md)
* [Exercício 16](16/README.md)
* [Exercício 17](17/README.md)
* Exercício 18
  * [Exercício I](18-I/README.md)  
  * [Exercício II](18-II/README.md)  

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
