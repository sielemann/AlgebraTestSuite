within AlgebraTestSuite.Melville1993.OA741.VariableGain.CurrentFunctions;
function iEmitterNpn
  input Real vb;
  input Real vc;
  input Real ve;
  input Real af;
  input Real ar;
  input Real afConst;
  input Real arConst;
  output Real i;
protected
  Real vbc;
  Real vbe;
  Real bf = af/(1 - af);
  Real br = ar/(1 - ar);
algorithm
  vbc :=vb - vc;
  vbe :=vb - ve;
  i := -1/afConst*Utilities.diodeCurrent(vbe) + ar/arConst*Utilities.diodeCurrent(vbc);
  annotation(smoothOrder=2);
end iEmitterNpn;
