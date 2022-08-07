# Lista sobre dualidade e dual-simplex

Repositório para resolução das listas de problemas de programação linear.

## Exercícios

* Exercício 1
  * [Resposta a](01-A/README.md)
  * [Resposta b](01-B/README.md)
  * [Resposta c](01-C/README.md)
* [Exercício 2](02/README.md)

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
