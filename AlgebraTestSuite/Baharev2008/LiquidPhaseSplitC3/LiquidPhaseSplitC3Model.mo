within AlgebraTestSuite.Baharev2008.LiquidPhaseSplitC3;
model LiquidPhaseSplitC3Model
  "Liquid phase split with C = 3, p. 22 in preprint"

  parameter Boolean startAtSol = false;

  parameter Real xstar1[:] = {0.6859023,0.002836175,0.9548265,0.3112616,0.4171931,0.0006027087}
    "Solution 1";
  parameter Real xstar2[:] = {0.0006027087,0.9548265,0.002836175,0.04457077,0.5828069,0.6859023}
    "Solution 2";

  Real x[:] = {y2, y3, x3, y1, lambda, x2};
  Real error1 = Modelica.Math.Vectors.norm(x - xstar1, Modelica.Constants.inf);
  Real error2 = Modelica.Math.Vectors.norm(x - xstar2, Modelica.Constants.inf);

  parameter Boolean includeTrivialSolutionMetricMessage = false
    "Include a warning message when approaching the unwanted trivial solution";

  Real x1(min=0, max=1) "Mole fraction of component 1 in phase I";
  Real x2(min=0, max=1, start=x2_start)
    "Mole fraction of component 2 in phase I";
  Real x3(min=0, max=1, start=x3_start)
    "Mole fraction of component 3 in phase I";
  Real y1(min=0, max=1, start=y1_start)
    "Mole fraction of component 1 in phase II";
  Real y2(min=0, max=1, start=y2_start)
    "Mole fraction of component 2 in phase II";
  Real y3(min=0, max=1, start=y3_start)
    "Mole fraction of component 3 in phase II";
  Real lambda(min=0, max=1, start=lambda_start) "Relative amount of phase I";

  constant Real z1=0.2 "Feed composition component 1";
  constant Real z2=0.4 "Feed composition component 2";
  constant Real z3=0.4 "Feed composition component 3";
  constant Real T=298.15 "Temperature";
  Real metric = (x1-y1)^2 + (x2-y2)^2
    "Metric to identify trivial solutions, < 1e-4 for probably trivial solutions with z_i = x_i = y_i";

  parameter Real y2_start = if startAtSol then xstar1[1] else 0.1 annotation(Evaluate=false);
  parameter Real y3_start = if startAtSol then xstar1[2] else 0.1 annotation(Evaluate=false);
  parameter Real x3_start = if startAtSol then xstar1[3] else 0.1 annotation(Evaluate=false);
  parameter Real y1_start = if startAtSol then xstar1[4] else 0.1 annotation(Evaluate=false);
  parameter Real lambda_start = if startAtSol then xstar1[5] else 0.1 annotation(Evaluate=false);
  parameter Real x2_start = if startAtSol then xstar1[6] else 0.1 annotation(Evaluate=false);
equation
  x1 + x2 + x3 = 1 "Sum of mole fractions of phase I";
  // Removed due to redundancy (TBC):
  //y1 + y2 + y3 = 1 "Sum of mole fractions of phase II";
  lambda*x1 + (1-lambda)*y1 = z1 "Material balance component 1";
  lambda*x2 + (1-lambda)*y2 = z2 "Material balance component 2";
  lambda*x3 + (1-lambda)*y3 = z3 "Material balance component 3";
  if includeTrivialSolutionMetricMessage then
    lngamma1(x1,x2,x3,T)+Modelica.Math.log(x1)=lngamma1withTrivialSolutionMetric(y1, y2, y3, T, metric)+Modelica.Math.log(y1)
      "Equifugacity condition for component 1";
  else
    lngamma1(x1,x2,x3,T)+Modelica.Math.log(x1)=lngamma1(y1, y2, y3, T)+Modelica.Math.log(y1)
      "Equifugacity condition for component 1";
  end if;
  lngamma2(x1,x2,x3,T)+Modelica.Math.log(x2)=lngamma2(y1,y2,y3,T)+Modelica.Math.log(y2)
    "Equifugacity condition for component 2";
  lngamma3(x1,x2,x3,T)+Modelica.Math.log(x3)=lngamma3(y1,y2,y3,T)+Modelica.Math.log(y3)
    "Equifugacity condition for component 3";
  assert(lambda>=0 and lambda<=1, "Lambda beyond reasonable values");

end LiquidPhaseSplitC3Model;
