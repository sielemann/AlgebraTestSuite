within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function idsNchannel
  input Real Vgb;
  input Real Vdb;
  input Real Vsb;
  input Real lambda2;
  input Real lambda1;
  output Real ids;
//protected
//  Real beta = 2e-5;
algorithm
  ids := 2e-5/2*vgsPrimeNchannel(Vgb, Vdb, Vsb, lambda2, lambda1)^2*hNchannel(Vdb, Vsb, lambda1);
end idsNchannel;
