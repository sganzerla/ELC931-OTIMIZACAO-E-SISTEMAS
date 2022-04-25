set subsidiaria := {1, 2, 3};

set projetos := {1 to 8};


set quantProjSub1 := {1, 2, 3};
set quantProjSub2 := {1, 2, 3};
set quantProjSub3 := {1, 2 };

param minInvestSub[subsidiaria] := <1> 3, <2> 5, <3> 8;

param projSub1[quantProjSub1] := <1> 1, <2> 2, <3> 3;
param projSub2[quantProjSub2] := <1> 3, <2> 4, <3> 5;
param projSub3[quantProjSub3] := <1> 6, <2> 7;

param maxInvestSub1PorProj[quantProjSub1] := <1> 6, <2> 5, <3> 9;
param maxInvestSub2PorProj[quantProjSub2] := <1> 7, <2> 10, <3> 4;
param maxInvestSub3PorProj[quantProjSub3] := <1> 6, <2> 3;

param retInvestSub1PorProj[quantProjSub1] := <1> 0.08, <2> 0.06, <3> 0.07;
param retInvestSub2PorProj[quantProjSub2] := <1> 0.05, <2> 0.08, <3> 0.09;
param retInvestSub3PorProj[quantProjSub3] := <1> 0.1, <2> 0.6;

param maxInvestSub2 := 17;

param totalInvest := 30;

var quantInvestPorProjSub1[quantProjSub1] >= 0;
var quantInvestPorProjSub2[quantProjSub2] >= 0;
var quantInvestPorProjSub3[quantProjSub3] >= 0;

maximize lucro : 
    (sum <p> in quantProjSub1 : quantInvestPorProjSub1[p] * retInvestSub1PorProj[p]) +
    (sum <p> in quantProjSub2 : quantInvestPorProjSub2[p] * retInvestSub2PorProj[p]) +
    (sum <p> in quantProjSub3 : quantInvestPorProjSub3[p] * retInvestSub3PorProj[p]);


subto limInvestTotal:
    (sum <p> in quantProjSub1 : quantInvestPorProjSub1[p] ) +
    (sum <p> in quantProjSub2 : quantInvestPorProjSub2[p] ) +
    (sum <p> in quantProjSub3 : quantInvestPorProjSub3[p] ) <= totalInvest;

subto minInvestSub1: 
    sum <p> in quantProjSub1 : quantInvestPorProjSub1[p] >= minInvestSub[1];
   
subto minInvestSub2:
    sum <p> in quantProjSub2 : quantInvestPorProjSub2[p] >= minInvestSub[2];

subto minInvestSub3:
    sum <p> in quantProjSub3 : quantInvestPorProjSub3[p] >= minInvestSub[3];

subto limInvestPorProjSub1:
    forall <p> in quantProjSub1 : quantInvestPorProjSub1[p] <= maxInvestSub1PorProj[p];
  
subto limInvestPorProjSub2:
    forall <p> in quantProjSub2 : quantInvestPorProjSub2[p] <= maxInvestSub2PorProj[p];

subto limInvestPorProjSub3:
    forall <p> in quantProjSub3 : quantInvestPorProjSub3[p] <= maxInvestSub3PorProj[p];

subto limMaxInvestSub2:
    sum <p> in quantProjSub2 : quantInvestPorProjSub2[p] <= maxInvestSub2;


