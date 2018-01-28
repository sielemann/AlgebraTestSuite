within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function vgsPrimePchannel
  input Real Vgb;
  input Real Vdb;
  input Real Vsb;
  input Real lambda2;
  input Real lambda1;
  output Real vgsPrime;
// protected
//   Real vgsNom = 0.2;
algorithm
  vgsPrime := pims(vgbPrimePchannel(lambda2, Vgb) - maxs(vsbPrimePchannel(lambda1, Vsb), vdbPrimePchannel(lambda1, Vdb)))/0.2;
end vgsPrimePchannel;
