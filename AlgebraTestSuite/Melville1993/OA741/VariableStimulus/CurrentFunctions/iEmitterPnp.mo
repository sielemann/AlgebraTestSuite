within AlgebraTestSuite.Melville1993.OA741.VariableStimulus.CurrentFunctions;
function iEmitterPnp
  import AlgebraTestSuite;
  input Real vb;
  input Real vc;
  input Real ve;
  input Real af;
  input Real ar;
  output Real i;
protected
  Real vbc;
  Real vbe;
  Real bf = af/(1 - af);
  Real br = ar/(1 - ar);
algorithm
  vbc :=vc - vb;
  vbe :=ve - vb;
  i :=-1/af*Utilities.diodeCurrent(vbe) +
    Utilities.diodeCurrent(vbc);
  annotation(smoothOrder=2);
end iEmitterPnp;
