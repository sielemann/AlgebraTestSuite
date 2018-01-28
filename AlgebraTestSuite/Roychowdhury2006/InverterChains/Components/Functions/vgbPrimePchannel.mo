within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function vgbPrimePchannel
  input Real lambda2;
  input Real Vgb;
  output Real vgbPrime;
// protected
//   Real vgbNom = 3;
algorithm
  vgbPrime := -(1 - lambda2)*3 + lambda2*Vgb;
end vgbPrimePchannel;
