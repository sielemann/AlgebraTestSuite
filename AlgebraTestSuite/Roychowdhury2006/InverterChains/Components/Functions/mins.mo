within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function mins
  input Real a;
  input Real b;
  output Real y;
algorithm
  y := a - lims(a-b);
end mins;
