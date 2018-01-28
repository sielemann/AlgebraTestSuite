within AlgebraTestSuite.AliasDifficult.CounterCurrentReactors2;
model Experiment "ALIAS difficult, Countercurrent reactors 2 with n = 6"
  parameter Boolean startAtSol = true;

  parameter Real xstar1[:] = {-0.3194564,-0.5740774,0.09881002,0.09386918,0.2924489}
    "Solution 1";
  parameter Real xstar2[:] = {1.22128,-7.503786,0.5383759,0.3105437,-10.20277}
    "Solution 2";

  Real x[:] = {x4, x6, x5, x3, x1};
  Real error1 = Modelica.Math.Vectors.norm(x - xstar1, Modelica.Constants.inf);
  Real error2 = Modelica.Math.Vectors.norm(x - xstar2, Modelica.Constants.inf);

  constant Real a = 0.414214;
  Real x1(start= x1_start);
  Real x2;
  Real x3(start= x3_start);
  Real x4(start= x4_start);
  Real x5(start= x5_start);
  Real x6(start= x6_start);
  parameter Real x1_start = if startAtSol then xstar1[5] else 0.5 annotation(Evaluate=false);
  parameter Real x3_start = if startAtSol then xstar1[4] else 0.5 annotation(Evaluate=false);
  parameter Real x4_start = if startAtSol then xstar1[1] else 0.5 annotation(Evaluate=false);
  parameter Real x5_start = if startAtSol then xstar1[3] else 0.5 annotation(Evaluate=false);
  parameter Real x6_start = if startAtSol then xstar1[2] else 0.5 annotation(Evaluate=false);
equation
  x1-(1-x1)*x3-a*(1+4*x2) = 0 "i = 1";
  -(1-x1)*x4-a*(1+4*x2) = 0 "i = 2";
  a*x1-(1-x1)*x5-x3*(1+4*x2) = 0 "i = 3";
  x1*x2+(1-x1)*x6-x4*(1+4*x3)= 0 "i = 4";
  x1*x3+x5*(1+4*x4) = 0 "i = 5";
  x1*x4-(1-x1)-x6*(1+4*x5) = 0 "i = 6";

end Experiment;
