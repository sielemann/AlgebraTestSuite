within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function vsbPrimeNchannel
  input Real lambda1;
  input Real Vsb;
  output Real vsbPrime;
algorithm
  vsbPrime := Vsb*(0.1*(1-lambda1) + lambda1);
end vsbPrimeNchannel;
