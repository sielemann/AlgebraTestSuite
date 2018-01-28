within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function vgbPrimeNchannel
  input Real lambda2;
  input Real Vgb;
  output Real vgbPrime;
// protected
//   Real vgbNom = 3;
algorithm
  vgbPrime := (1 - lambda2)*3 + lambda2*Vgb;
end vgbPrimeNchannel;
