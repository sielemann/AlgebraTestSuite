within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function vdbPrimePchannel
  input Real lambda1;
  input Real Vdb;
  output Real vdbPrime;
algorithm
  vdbPrime := Vdb*(0.1*(1-lambda1) + lambda1);
end vdbPrimePchannel;
