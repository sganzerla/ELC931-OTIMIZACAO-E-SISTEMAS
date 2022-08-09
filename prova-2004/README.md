# Prova métodos simplex - 2004

Repositório para resolução das listas de problemas de programação linear.

## Exercícios

* [Exercício 1](01/README.md)
* [Exercício 2](02/README.md)
* [Exercício 3](03/README.md)
* [Exercício 4-A](04-A/README.md)
* [Exercício 4-B](04-B/README.md)
* [Exercício 4-C](04-C/README.md)

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
