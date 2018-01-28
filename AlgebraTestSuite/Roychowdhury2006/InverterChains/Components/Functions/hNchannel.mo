within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function hNchannel
  input Real Vdb;
  input Real Vsb;
  input Real lambda1;
  output Real h;
// protected
//   Real Gnom = 5;
algorithm
  h :=2/Modelica.Constants.pi*Modelica.Math.atan(5*(vdbPrimeNchannel(lambda1,
    Vdb) - vsbPrimeNchannel(lambda1, Vsb)));
end hNchannel;
