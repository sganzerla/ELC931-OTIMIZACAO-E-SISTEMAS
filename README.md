# ELC931-Otimização-Sistemas

Repositório para resolução das listas de problemas de programação linear.

## Exercícios Resolvidos

* [Lista Modelagem](lista-modelagem/README.md)
* [Lista Simplex](lista-simplex/README.md)
* [Lista Dualidade](lista-dualidade/README.md)
* [Prova 2004](prova-2004/README.md)
* [Prova 2019](prova-2019/README.md)
* [Atividade Final](atividade-final/README.md)

### Solução com `Zimple` e `CPLEX`

Utiliza-se a linguagem de programação matemática `ZIMPL` para expressar a função objetivo, as variáveis e as restrições, ela gera um arquivo `.lp` que depois é lido por um resolvedor como o `CPLEX`.

![image](resources/flow.png)

Necessário instalar o `CPLEX` e o `ZIMPL`.

O `ZIMPL` já vêm com um executável sem instalação, mas o `CPLEX` precisa ser instalado.

O download do `ZIMPL` pode ser obtido através dos links:

* [Repositório Oficial](https://zimpl.zib.de/download/)
* [Nesse repositório](https://github.com/sganzerla/ELC931-OTIMIZACAO-E-SISTEMAS/blob/main/zimpl.exe)

O download do `CPLEX` pode ser obtido através do link (necessário criar uma conta utilizando email acadêmico):

* [Repositório Oficial](https://www.ibm.com/academic/topic/data-science)

![image](resources/CPLEX.png)

## Referências

* [Zimpl User Guide](resources/ZIMPL.png)
* [Manual IBM CPLEX](https://www.ibm.com/docs/en/icos/12.10.0?topic=SSSA5P_12.10.0/ilog.odms.studio.help/Optimization_Studio/topics/COS_home.html)
