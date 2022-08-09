# Prova métodos simplex - 2004

Repositório para resolução das listas de problemas de programação linear.

## Exercícios

* [Exercício 2](02/README.md)
* Exercício 3
  * [Exercício 3-A](03-A/README.md)
  * [Exercício 3-B](03-B/README.md)
  * [Exercício 3-C](03-C/README.md)
  * [Exercício 3-D](03-D/README.md)

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
