# liga A e liga B
set ligas := {1, 2}; 

set minerio := {1, 2, 3};

set componentes := {1, 2, 3, 4};

param lucroPorLiga[ligas] := <1> 200, <2> 300;

param composicaoMinerio1[componentes] :=  <1> 0.2, <2> 0.1, <3> 0.3, <4> 0.3;
param composicaoMinerio2[componentes] :=  <1> 0.1, <2> 0.2, <3> 0.3, <4> 0.3;
param composicaoMinerio3[componentes] :=  <1> 0.05, <2> 0.05, <3> 0.7, <4> 0.2;

param custoMinerioTonelada[minerio] := <1> 30, <2> 40, <3> 50;
param maxProducaomMinerio[minerio] := <1> 1000, <2>2000, <3> 3000;

var quantMinerio1[componentes] >= 0;
var quantMinerio2[componentes] >= 0;
var quantMinerio3[componentes] >= 0;
var quantLigaA integer >= 0;
var quantLigaB integer >= 0;

maximize lucro :
    (lucroPorLiga[1] * quantLigaA + lucroPorLiga[2] * quantLigaB) + 
    ((quantMinerio1[1] * composicaoMinerio1[1] + quantMinerio1[2] * composicaoMinerio1[2] + quantMinerio1[3] * composicaoMinerio1[3] + quantMinerio1[4] * composicaoMinerio1[4] + 10) * custoMinerioTonelada[1] )+
    ((quantMinerio2[1] * composicaoMinerio2[1] + quantMinerio2[2] * composicaoMinerio2[2] + quantMinerio2[3] * composicaoMinerio2[3] + quantMinerio2[4] * composicaoMinerio2[4] + 10) * custoMinerioTonelada[2] )+
    ((quantMinerio3[1] * composicaoMinerio3[1] + quantMinerio3[2] * composicaoMinerio3[2] + quantMinerio3[3] * composicaoMinerio3[3] + quantMinerio3[4] * composicaoMinerio3[4] ) * custoMinerioTonelada[3] )
;

subto limiteProducaoMinerio :
    forall <m> in minerio:
        sum <c> in componentes : composicaoMinerio1[c] * quantMinerio1[c] <= maxProducaomMinerio[m];

subto componentesLigaA:
    quantLigaA ==  
     (quantMinerio1[1] * composicaoMinerio1[1] + quantMinerio2[1] * composicaoMinerio2[1] + quantMinerio3[1] * composicaoMinerio3[1] ) +
     (quantMinerio1[2] * composicaoMinerio1[2] + quantMinerio2[2] * composicaoMinerio2[2] + quantMinerio3[2] * composicaoMinerio3[2] ) +
     (quantMinerio1[4] * composicaoMinerio1[4] + quantMinerio2[4] * composicaoMinerio2[4] + quantMinerio3[4] * composicaoMinerio3[4] ) ;

subto componentesLigaB:
    quantLigaB ==  
     (quantMinerio1[2] * composicaoMinerio1[2] + quantMinerio2[2] * composicaoMinerio2[2] + quantMinerio3[2] * composicaoMinerio3[2] ) +
     (quantMinerio1[3] * composicaoMinerio1[3] + quantMinerio2[3] * composicaoMinerio2[3] + quantMinerio3[3] * composicaoMinerio3[3] ) +
     (quantMinerio1[4] * composicaoMinerio1[4] + quantMinerio2[4] * composicaoMinerio2[4] + quantMinerio3[4] * composicaoMinerio3[4] ) ;

subto percentComponente1LigaA :
    (quantMinerio1[1] * composicaoMinerio1[1] + quantMinerio2[1] * composicaoMinerio2[1] + quantMinerio3[1] * composicaoMinerio3[1] ) <= quantLigaA * 0.8;

subto percentComponente2LigaA :
    (quantMinerio1[2] * composicaoMinerio1[2] + quantMinerio2[2] * composicaoMinerio2[2] + quantMinerio3[2] * composicaoMinerio3[2] ) <= quantLigaA * 0.3;

subto percentComponente4LigaA :
    (quantMinerio1[4] * composicaoMinerio1[4] + quantMinerio2[4] * composicaoMinerio2[4] + quantMinerio3[4] * composicaoMinerio3[4] ) >= quantLigaA * 0.5;

subto percentComponente2LigaB1 :
    (quantMinerio1[2] * composicaoMinerio1[2] + quantMinerio2[2] * composicaoMinerio2[2] + quantMinerio3[2] * composicaoMinerio3[2] ) <= quantLigaB * 0.6;

# subto percentComponente2LigaB2 :
#     (quantMinerio1[2] * composicaoMinerio1[2] + quantMinerio2[2] * composicaoMinerio2[2] + quantMinerio3[2] * composicaoMinerio3[2] ) >= quantLigaB * 0.4;

subto percentComponente3LigaB :
    (quantMinerio1[3] * composicaoMinerio1[3] + quantMinerio2[3] * composicaoMinerio2[3] + quantMinerio3[3] * composicaoMinerio3[3] ) >= quantLigaB * 0.3;

subto percentComponente4LigaB :
    (quantMinerio1[4] * composicaoMinerio1[4] + quantMinerio2[4] * composicaoMinerio2[4] + quantMinerio3[4] * composicaoMinerio3[4] ) <= quantLigaB * 0.7;
