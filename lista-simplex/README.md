# Lista sobre dualidade e dual-simplex

Repositório para resolução das listas de problemas de programação linear.

## Exercícios

* [Exercício 1](01/README.md)
* [Exercício 3](03/README.md)
* [Exercício 5](05/README.md)
* [Exercício 6](06/README.md)

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
