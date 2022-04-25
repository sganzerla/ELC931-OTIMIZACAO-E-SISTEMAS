
set indice := {1, 2, 3};

# A, B e C
set tipoChapa := {1, 2, 3};


param minutosPrensarChapa[tipoChapa] := <1> 1, <2> 1, <3> 2;

param minutosEsmaltarChapa[tipoChapa] := <1> 3, <2> 4.5, <3> 1;

param lucroUnitario[tipoChapa] := <1> 5, <2> 7 , <3> 8;

param  minutosUsoPrensa  := 2000;

param minutosUsoEsmaltagem := 8000;

var quantidadeChapaProduzir[tipoChapa] >= 0;

maximize lucro : sum <i> in indice : lucroUnitario[i] * quantidadeChapaProduzir[i];

subto  limiteMinutosPrensa:
    sum <t> in tipoChapa : minutosPrensarChapa[t] * quantidadeChapaProduzir[t] <= minutosUsoPrensa;

subto minutosUsoEsmaltagem:
    sum <t> in tipoChapa : minutosEsmaltarChapa[t] * quantidadeChapaProduzir[t] <= minutosUsoEsmaltagem;

