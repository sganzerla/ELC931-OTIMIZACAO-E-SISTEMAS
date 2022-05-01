# Produtos: Gás, Gasolina, Querosene, Óleo Diesel, Oleo Pesado, Oleo Leve
set p := {1 to 6};

# Paises de origem do petroleo: Kwait, Arabia, Libia
set o := {1 to 3};

# derivados do petroleo : Gás, Gasolina, Querosene, Óleo Diesel, Residuo
set d := { 1 to 5};

# pais de origem * derivados do petroleo
set od := o * d;

# porcentagem dos componentes conforme pais de origem
param OD[od] :=
    <1, 1> 0.1, <1, 2> 0.1,  <1, 3> 0.1,  <1, 4> 0.1,  <1, 5> 0.6,
    <1, 1> 0.1, <1, 2> 0.15, <1, 3> 0.15, <1, 4> 0.15, <1, 5> 0.45,
    <1, 1> 0.1, <1, 2> 0.20, <1, 3> 0.2,  <1, 4> 0.2,  <1, 5> 0.3;


# maximo de barril disponivel dia
param D[o] := <1> 70000, <2> 100000, <3> 50000;

# custo do barill
param C[o] := <1> 3, <2> 2.5, <3> 3.0;

# preco de venda dos produtos
param V[p] := <1> 2.1, <2> 3.5, <3> 3.3, <4> 3.1, <5> 2.5, <6> 2.8;

# producao maxima barris/dia
param Max[p] := <1> 10000, <2> 20000, <3> 20000, <4> 25000, <5> 20000, <6> 20000;

# producao maxima barris/dia1
param Min[p] := <1> 5000, <2> 13000, <3> 15000, <4> 10000, <5> 10000, <6> 12000;

# maximo de barris por dia
param MAX_PROD := 100000;

# minimo de barris comprado da arabia saudita
param MIN_ARABIA := 10000;

# quantidade de barril comprado dos paises de origem
var Xc[o] >= 0;

# quantidade de produtos produzidos
var Xp[p] >= 0;


maximize lucro :
    (sum <px> in p : Xp[px] * V[px]) -    
    (sum <ox> in o : Xc[ox] * C[ox]);
 
#  producao maxima paises de origem
 subto c1:
    forall <ox> in o :
        Xc[ox] <= D[ox];

# producao total maxima de barris na refinaria
subto c2:
    sum <px> in p : Xp[px]  <= MAX_PROD;

# producao minima e maxima na refinaria de cada produto
subto c3:
    forall <px> in p :
        Xp[px] <= Max[px] and Xp[px] >= Min[px];

# compra minima da arabia saudita
subto c4 :
    Xc[2] >= MIN_ARABIA;

# # balanceamento de componentes
# subto c5 :
#     forall <ox> in o :
#         <px> in p : Xp[px] * OD[ox, px] = Xc[ox];