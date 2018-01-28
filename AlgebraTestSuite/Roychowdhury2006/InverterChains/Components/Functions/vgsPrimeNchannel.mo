within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function vgsPrimeNchannel
  input Real Vgb;
  input Real Vdb;
  input Real Vsb;
  input Real lambda2;
  input Real lambda1;
  output Real vgsPrime;
// protected
//   Real vgsNom = 0.2;
algorithm
  vgsPrime := lims(vgbPrimeNchannel(lambda2, Vgb) - mins(vsbPrimeNchannel(lambda1, Vsb), vdbPrimeNchannel(lambda1, Vdb)))/0.2;
end vgsPrimeNchannel;
