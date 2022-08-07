# Lista sobre dualidade e dual-simplex

Repositório para resolução das listas de problemas de programação linear.

## Exercícios

* Exercício 1
  * [Resposta A](01-A/README.md)
  * [Resposta B](01-B/README.md)
  * [Resposta C](01-C/README.md)
* [Exercício 2](02/README.md)
* [Exercício 3](03/README.md)
* Exercício 4
  * [Resposta A](04-A/README.md)
  * [Resposta B](04-B/README.md)
  * [Resposta C](04-C/README.md)
  * [Resposta D](04-D/README.md)
  * [Resposta E](04-E/README.md)
* Exercício 6
  * [Resposta A](06-A/README.md)

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
