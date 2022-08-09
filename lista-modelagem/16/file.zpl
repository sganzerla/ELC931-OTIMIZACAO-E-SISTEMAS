# operadores: KC, DH, HB, SC, KS, NK
set o := { 1 to 6};

# Dias da semana: seg, ter, qua, qui, sex
set d := { 1 to 5};

set od := o * d;

# Remuneracao por hora dos operadores
param R[o] := <1> 4.20, <2> 4.30, <3> 4.10, <4> 4, <5>5, <6> 5.5;

# disponibilidade de horario dos operadores
param D[od] :=  
                <1,1> 6,    <1,2> 0,     <1,3>6,    <1,4>6,       <1,5>0,
                <2,1> 0,    <2,2> 6,     <2,3>0,    <2,4>0,       <2,5>6,
                <3,1> 4,    <3,2> 8,     <3,3>4,    <3,4>4,       <3,5>0,
                <4,1> 5,    <4,2> 5,     <4,3>5,    <4,4>5,       <4,5>0,
                <5,1> 3,    <5,2> 0,     <5,3>3,    <5,4>0,       <5,5>8,
                <6,1> 0,    <6,2> 0,     <6,3>0,    <6,4>2,       <6,5>6;

param MAX_HS_DIA := 14;
param MAX_HS_H := 8;
param MAX_HS_M := 7; #KS e NK

# QUANTIDADE DE HORAS POR OPERADOR POR DIA

var X[od] >= 0; 
var CMax >= 0;

minimize custo: 
        sum <ox, dx> in od : X[ox, dx] * R[ox] + CMax * 100;
               

# RESTRICAO MAXIMO HORAS DIARIAS POR OPERADOR
 subto c1 :
        forall <ox, dx> in od :
                X[ox, dx] <= D[ox, dx]; 

# MINIMO DE HORAS TRABALHADAS POR DIA ENTRE TODOS OS OPERADORES
subto c2 :
        forall <dx> in d :
                sum <ox> in o : X[ox, dx] >= MAX_HS_DIA;

# carga horaria maxima para homens
subto c3 :
        forall <ox> in {1 to 4} :
                sum <dx> in d : X[ox, dx] <= MAX_HS_H;

# carga horaria maxima para mulheres
subto c4 :
        forall <ox> in {5 to 6} :
                sum <dx> in d : X[ox, dx] <= MAX_HS_M;

 subto c5 :
        forall <ox> in o : 
                sum <dx> in d: X[ox, dx] <= CMax;