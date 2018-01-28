within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function maxs
  input Real a;
  input Real b;
  output Real y;
algorithm
  y := a - pims(a-b);
end maxs;
