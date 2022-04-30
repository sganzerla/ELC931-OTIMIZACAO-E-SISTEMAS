# KC, DH, HB, SC, KS, NK
set operadores := { 1 to 6};
set diasSemana := { 1 to 5};

param remuneracaoHora[operadores] := <1> 4.20, <2> 4.30, <3> 4.10, <4> 4, <5>5, <6> 5.5;

param maxHorasDiariasOp1[diasSemana] :=  <1> 6, <2> 0, <3> 6, <4> 6, <5> 0;
param maxHorasDiariasOp2[diasSemana] :=  <1> 0, <2> 6, <3> 0, <4> 0, <5> 6;
param maxHorasDiariasOp3[diasSemana] :=  <1> 4, <2> 8, <3> 4, <4> 4, <5> 0;
param maxHorasDiariasOp4[diasSemana] :=  <1> 5, <2> 5, <3> 5, <4> 5, <5> 0;
param maxHorasDiariasOp5[diasSemana] :=  <1> 3, <2> 0, <3> 3, <4> 0, <5> 8;
param maxHorasDiariasOp6[diasSemana] :=  <1> 0, <2> 0, <3> 0, <4> 2, <5> 6;

param maxhorasDiaFuncionamento := 14;
param minHorasSemanaisOpHomem := 8;
param minHorasSemanaisOpMulher := 7; #KS e NK

var horasTrabalharOp1[diasSemana] integer >= 0;
var horasTrabalharOp2[diasSemana] integer >= 0;
var horasTrabalharOp3[diasSemana] integer >= 0;
var horasTrabalharOp4[diasSemana] integer >= 0;
var horasTrabalharOp5[diasSemana] integer >= 0;
var horasTrabalharOp6[diasSemana] integer >= 0;

minimize custo: 
        sum <d> in diasSemana:
               (horasTrabalharOp1[d] * remuneracaoHora[1] +
                horasTrabalharOp2[d] * remuneracaoHora[2] +
                horasTrabalharOp3[d] * remuneracaoHora[3] +
                horasTrabalharOp4[d] * remuneracaoHora[4] +
                horasTrabalharOp5[d] * remuneracaoHora[5] +
                horasTrabalharOp6[d] * remuneracaoHora[6] );

# RESTRICAO MAXIMO HORAS DIARIAS POR OPERADOR
subto maxHorasSemanalOp1 :
        forall <d> in diasSemana: horasTrabalharOp1[d] <= maxHorasDiariasOp1[d];

subto maxHorasDiariasOp2 :
        forall <d> in diasSemana: horasTrabalharOp2[d] <= maxHorasDiariasOp2[d];

subto maxHorasDiariasOp3 :
        forall <d> in diasSemana: horasTrabalharOp3[d] <= maxHorasDiariasOp3[d];

subto maxHorasDiariasOp4 :
        forall <d> in diasSemana: horasTrabalharOp4[d] <= maxHorasDiariasOp4[d];

subto maxHorasDiariasOp5 :
        forall <d> in diasSemana: horasTrabalharOp5[d] <= maxHorasDiariasOp5[d];

subto maxHorasDiariasOp6 :
        forall <d> in diasSemana: horasTrabalharOp6[d] <= maxHorasDiariasOp6[d];

# RESTRICAO MINIMO HORAS DIARIAS POR OPERADOR
subto minHorasDiariasOp1 :
        forall <d> in diasSemana: horasTrabalharOp1[d] >= minHorasSemanaisOpHomem;

subto minHorasDiariasOp2 :
        forall <d> in diasSemana: horasTrabalharOp2[d] >= minHorasSemanaisOpHomem;

subto minHorasDiariasOp3 :
        forall <d> in diasSemana: horasTrabalharOp3[d] >= minHorasSemanaisOpHomem;

subto minHorasDiariasOp4 :
        forall <d> in diasSemana: horasTrabalharOp4[d] >= minHorasSemanaisOpHomem;

subto minHorasDiariasOp5 :
        forall <d> in diasSemana: horasTrabalharOp5[d] >= minHorasSemanaisOpMulher;

subto minHorasDiariasOp6 :
        forall <d> in diasSemana: horasTrabalharOp6[d] >= minHorasSemanaisOpMulher;

# RESTRICAO MAXIMO HORAS DIARIAS ENTRE TODOS OS OPERADORES
subto maxHorasDiariasEntreOperadores :
        forall <d> in diasSemana:
                (horasTrabalharOp1[d] + horasTrabalharOp2[d] +
                 horasTrabalharOp3[d] + horasTrabalharOp4[d] + 
                 horasTrabalharOp5[d] + horasTrabalharOp6[d]) <= maxhorasDiaFuncionamento;