# Tutorial

## CPLEX

Obter o `IBM ILOG CPLEX` no site da IBM necessita uma conta acadêmica ou uma versão gratuita de amostra.

Após realizar o donwload e a instalação diretamente pelo executável pode-se habilitar o pacote para uso da API com Python através do comando abaixo como adminstrador

Descobrir onde está localizado o CPLEX no Linux

    python C:`Program Files`\IBM\ILOG\CPLEX_Studio201\python\setup.py install

Ou no Ubuntu

    python3 /opt/ibm/ILOG/CPLEX_Studio_Community221/python/setup.py install

Instalar os pacotes

    pip install  cplex  docplex

## Exemplo

Segue exemplo de uso da ferramenta integrada, com ela, a modelagem e a chamada ao solver são codificados dentro do mesmo arquivo.

[Exemplo](lp.ipynb)
