within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function lims
  input Real x;
  output Real y;
// protected
//   Real k = 2;
algorithm
  y := x*(1+Modelica.Math.tanh(2*x))/2;
end lims;
