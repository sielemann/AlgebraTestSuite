within AlgebraTestSuite.AliasDifficult.Osborne1;
model Experiment "ALIAS difficult, Osborne 1"

  constant Real t1=10*(1 - 1);
  constant Real t2=10*(2 - 1);
  constant Real t3=10*(3 - 1);
  constant Real t4=10*(4 - 1);
  constant Real t5=10*(5 - 1);
  constant Real y1=0.844;
  constant Real y2=0.908;
  constant Real y3=0.932;
  constant Real y4=0.936;
  constant Real y5=0.925;
  parameter Real x1_start = 0.1;
  parameter Real x2_start = 0.1;
  parameter Real x3_start = 0.1;
  parameter Real x4_start = 0.1;
  parameter Real x5_start = 0.1;
  Real x1(min=-10, start=x1_start, max=10);
  Real x2(min=-10, start=x2_start, max=10);
  Real x3(min=-10, start=x3_start, max=10);
  Real x4(min=-10, start=x4_start, max=10);
  Real x5(min=-10, start=x5_start, max=10);
equation
  0 = y1 - (x1 + x2*exp(-t1*x4)+x3*exp(-t1*x5));
  0 = y2 - (x1 + x2*exp(-t2*x4)+x3*exp(-t2*x5));
  0 = y3 - (x1 + x2*exp(-t3*x4)+x3*exp(-t3*x5));
  0 = y4 - (x1 + x2*exp(-t4*x4)+x3*exp(-t4*x5));
  0 = y5 - (x1 + x2*exp(-t5*x4)+x3*exp(-t5*x5));
end Experiment;
