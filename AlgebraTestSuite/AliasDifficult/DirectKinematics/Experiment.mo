within AlgebraTestSuite.AliasDifficult.DirectKinematics;
model Experiment "ALIAS difficult, Direct kinematics from COPRIN"
  parameter Boolean startAtSol = false;

  parameter Real xstar1[:] = {-7, 15.802,  4.93526, 9.56639, 0.568584, 0, 15.802,  7, 4.93526, 8.51377, 0}
    "Solution 1";
  parameter Real xstar2[:] = {-7, 15.5501, 4.96965, 9.99996, 0.523603, 0, 15.5501, 7, 4.96965, 8.00005, 0}
    "Solution 2";

  Real x[:] = {x1, y1, z1, zc, t, p, y2, x2, z2, yc, xc};
  Real error1 = Modelica.Math.Vectors.norm(x - xstar1, Modelica.Constants.inf);
  Real error2 = Modelica.Math.Vectors.norm(x - xstar2, Modelica.Constants.inf);

  Real xc(min=-12.80624847, max=12.80624847, start = xc_start);
  Real yc(min=-12.80624847, max=12.80624847, start = yc_start);
  Real zc(min=0, max=12.80624847, start = zc_start);
  Real p(min=-1.570796327, max=1.570796327, start = p_start);
  Real t(min=-1.570796327, max=1.570796327, start = t_start);
  Real x1(min=-12., max=-2., start = x1_start);
  Real y1(min=10., max=20., start = y1_start);
  Real z1(min=-5., max=5., start = z1_start);
  Real x2(min=2., max=12., start = x2_start);
  Real y2(min=10., max=20., start = y2_start);
  Real z2(min=-5., max=5., start = z2_start);

  parameter Real xc_start = if startAtSol then xstar1[11] else 0.1;
  parameter Real yc_start = if startAtSol then xstar1[10] else 0.1;
  parameter Real zc_start = if startAtSol then xstar1[4] else 0.1;
  parameter Real p_start = if startAtSol then xstar1[6] else 0.1;
  parameter Real t_start = if startAtSol then xstar1[5] else 0.1;
  parameter Real x1_start = if startAtSol then xstar1[1] else 0.1;
  parameter Real y1_start = if startAtSol then xstar1[2] else 0.1;
  parameter Real z1_start = if startAtSol then xstar1[3] else 0.1;
  parameter Real x2_start = if startAtSol then xstar1[8] else 0.1;
  parameter Real y2_start = if startAtSol then xstar1[7] else 0.1;
  parameter Real z2_start = if startAtSol then xstar1[9] else 0.1;

equation
  xc^2 + yc^2 + zc^2 - 164 = 0;
  304.0192 - 20*xc - 300*cos(p) + 100*sin(p)*cos(t) - 10*yc - 150*sin(p) - 50*
    cos(p)*cos(t) + 30*xc*cos(p) - 10*xc*sin(p)*cos(t) + 30*yc*sin(p) + 10*yc*
    cos(p)*cos(t) + 10*zc*sin(t) = 0;
  304.0192 + 20*xc - 300*cos(p) - 100*sin(p)*cos(t) - 10*yc + 150*sin(p) - 50*
    cos(p)*cos(t) - 30*xc*cos(p) - 10*xc*sin(p)*cos(t) - 30*yc*sin(p) + 10*yc*
    cos(p)*cos(t) + 10*zc*sin(t) = 0;
  (x1 + 7)^2 + (y1 - 15)^2 + z1^2 - 25 = 0;
  (cos(p)*(x1 - xc) + sin(p)*(y1 - yc) + 7.000000)^2 + (-sin(p)*cos(t)*(x1 - xc)
     + cos(p)*cos(t)*(y1 - yc) + sin(t)*(z1 - zc) - 7.011678)^2 + (sin(p)*sin(t)
    *(x1 - xc) - cos(p)*sin(t)*(y1 - yc) + cos(t)*(z1 - zc) + 4.065716)^2 -
    25.46010 = 0;
  (x2 - 7)^2 + (y2 - 15)^2 + z2^2 - 25 = 0;
  (cos(p)*(x2 - xc) + sin(p)*(y2 - yc) - 7.000000)^2 + (-sin(p)*cos(t)*(x2 - xc)
     + cos(p)*cos(t)*(y2 - yc) + sin(t)*(z2 - zc) - 7.011678)^2 + (sin(p)*sin(t)
    *(x2 - xc) - cos(p)*sin(t)*(y2 - yc) + cos(t)*(z2 - zc) + 4.065716)^2 -
    25.46010 = 0;
  60.*z1 - 4.*z1*yc + (28.04672*y1 - 420.7008)*sin(t) + (243.9430 - 16.26286*y1)
    *cos(t) + 28.*z1*sin(p) + (-16.26286*sin(t)*z1 - 28.04672*cos(t)*z1)*cos(p)
     + (-60. + 4.*y1)*zc = 0;
  28.*z1 + 4.*z1*xc + (-196.3270 - 28.04672*x1)*sin(t) + (113.8400 + 16.26286*
    x1)*cos(t) + (-16.26286*sin(t)*z1 - 28.04672*cos(t)*z1)*sin(p) - 28.*z1*cos(
     p) + (-4.*x1 - 28.)*zc = 0;
  60.*z2 - 4.*z2*yc + (-420.7008 + 28.04672*y2)*sin(t) + (243.9430 - 16.26286*
    y2)*cos(t) - 28.*z2*sin(p) + (-28.04672*cos(t)*z2 - 16.26286*sin(t)*z2)*cos(
     p) + (4.*y2 - 60.)*zc = 0;
  -28.*z2 + 4.*z2*xc + (196.3270 - 28.04672*x2)*sin(t) + (-113.8400 + 16.26286*
    x2)*cos(t) + (-28.04672*cos(t)*z2 - 16.26286*sin(t)*z2)*sin(p) + 28.*z2*cos(
     p) + (-4.*x2 + 28.)*zc = 0;

end Experiment;
