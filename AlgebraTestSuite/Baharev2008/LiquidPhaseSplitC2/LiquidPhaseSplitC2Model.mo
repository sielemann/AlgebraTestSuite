within AlgebraTestSuite.Baharev2008.LiquidPhaseSplitC2;
model LiquidPhaseSplitC2Model
  "Liquid phase split with C = 2, p. 22 in preprint"

  parameter Boolean startAtSol = false;

  parameter Real xstar1[:] = {0.8920055, 0.1079945, 0.5345318, 0.1586431}
    "Solution 1";
  parameter Real xstar2[:] = {0.9173296, 0.1033243, 1, 0.5} "Solution 2";
  parameter Real xstar3[:] = {0.1586431, 0.8413569, 0.4654682, 0.8920055}
    "Solution 3";
  parameter Real xstar4[:] = {0.175234, 0.8328468, 1, 0.5} "Solution 4";
  parameter Real xstar5[:] = {0.707105, 0.292895, 0.292894, 0} "Solution 5";

  Real x[:] = {y2, y1, lambda, x2};
  Real error1 = Modelica.Math.Vectors.norm(x - xstar1, Modelica.Constants.inf);
  Real error2 = Modelica.Math.Vectors.norm(x - xstar2, Modelica.Constants.inf);
  Real error3 = Modelica.Math.Vectors.norm(x - xstar3, Modelica.Constants.inf);
  Real error4 = Modelica.Math.Vectors.norm(x - xstar4, Modelica.Constants.inf);
  Real error5 = Modelica.Math.Vectors.norm(x - xstar5, Modelica.Constants.inf);

  parameter Boolean includeTrivialSolutionMetricMessage = false
    "Include a warning message when approaching the unwanted trivial solution";

  Real x1(min=0, max=1) "Mole fraction of component 1 in phase I";
  Real x2(min=0, max=1, start=x2_start)
    "Mole fraction of component 2 in phase I";
  Real y1(min=0, max=1, start=y1_start)
    "Mole fraction of component 1 in phase II";
  Real y2(min=0, max=1, start=y2_start)
    "Mole fraction of component 2 in phase II";
  Real lambda(min=0, max=1, start=lambda_start) "Relative amount of phase I";
  //Real r "Auxiliary variable for exclusion of trivial solutions";
  constant Real z1=0.5 "Feed composition component 1";
  constant Real z2=0.5 "Feed composition component 2";
  constant Real T=298.15 "Temperature";
  Real metric = (x1-y1)^2
    "Metric to identify trivial solutions, < 1e-4 for probably trivial solutions with z_i = x_i = y_i";

  parameter Real y2_start = if startAtSol then xstar1[1] else 0.1
                          annotation(Evaluate=false);
  parameter Real y1_start = if startAtSol then xstar1[2] else 0.1
                          annotation(Evaluate=false);
  parameter Real lambda_start = if startAtSol then xstar1[3] else 0.1
                              annotation(Evaluate=false);
  parameter Real x2_start = if startAtSol then xstar1[4] else 0.1
                          annotation(Evaluate=false);
equation
  x1 + x2 = 1 "Sum of mole fractions of phase I, eq 12";
  // Removed due to redundancy (TBC):
  //y1 + y2 = 1 "Sum of mole fractions of phase II, eq 12";
  lambda*x1 + (1-lambda)*y1 = z1 "Material balance component 1, eq 13";
  lambda*x2 + (1-lambda)*y2 = z2 "Material balance component 2, eq 13";
  if includeTrivialSolutionMetricMessage then
    lngamma1inline(x1,x2,T)+Modelica.Math.log(x1)=lngamma1withTrivialSolutionMetric(y1, y2, T, metric)+Modelica.Math.log(y1)
      "Equifugacity condition for component 1, eq 14";
  else
    lngamma1inline(x1,x2,T)+Modelica.Math.log(x1)=lngamma1inline(y1, y2, T)+Modelica.Math.log(y1)
      "Equifugacity condition for component 1, eq 14";
  end if;
  lngamma2inline(x1,x2,T)+Modelica.Math.log(x2)=lngamma2inline(y1,y2,T)+Modelica.Math.log(y2)
    "Equifugacity condition for component 2, eq 14";
end LiquidPhaseSplitC2Model;
