within AlgebraTestSuite.AliasDifficult.SynthesisProblem.SubproblemA;
model Experiment
  "ALIAS difficult, Synthesis problem from COPRIN (subproblem A with 9 unknowns)"
  parameter Boolean startAtSol = false;

  parameter Real xstar1[:] =  {11.0875,10.001,13.6245,-7.77283,4.74455,7.9972,2.0063,17.6001,3.69289}
    "Solution 2";
  parameter Real xstar2[:] =  {5.41141,0.79094,17.7821,-2.84552,0,12.5759,3.03644,24.8445,3.20089}
    "Solution 3";
  parameter Real xstar3[:] =  {5.41141,0.79094,15.5355,-11.9712,0,12.5759,3.03644,24.8445,3.20089}
    "Solution 4";
  parameter Real xstar4[:] =  {3.50206,0.79094,14.6466,-11.9875,0,11.4348,-6.05147,20.4311,-2.94326}
    "Solution 5";
  parameter Real xstar5[:] =  {3.50206,0.79094,16.145,-11.8671,0,11.4348,-6.05147,20.4311,-2.94326}
    "Solution 6";
  parameter Real xstar6[:] =  {10.1113,4.48446,12.3384,-3.21909,1.90272,5.50054,10.8459,15.8402,13.1389}
    "Solution 7";

  Real x[:] = {z2, zc, y1, x1, z1, yc, xc, y2, x2};
  Real error1 = Modelica.Math.Vectors.norm(x - xstar1, Modelica.Constants.inf);
  Real error2 = Modelica.Math.Vectors.norm(x - xstar2, Modelica.Constants.inf);
  Real error3 = Modelica.Math.Vectors.norm(x - xstar3, Modelica.Constants.inf);
  Real error4 = Modelica.Math.Vectors.norm(x - xstar4, Modelica.Constants.inf);
  Real error5 = Modelica.Math.Vectors.norm(x - xstar5, Modelica.Constants.inf);
  Real error6 = Modelica.Math.Vectors.norm(x - xstar6, Modelica.Constants.inf);

  Real x2(start = x2_start, min=-4.8589569167276084735123948492, max=
        18.8589569167276084735123948492);
  Real y2(start = y2_start, min=3.1410430832723915264876051508, max=
        26.8589569167276084735123948492);
  Real z2(start = z2_start, min=0, max=11.8589569167276084735123948492);
  Real zc(start = zc_start, min=0, max=12.9614813968157204619319348722);
  Real y1(start = y1_start, min=10., max=20.);
  Real x1(start = x1_start, min=-12., max=-2.);
  Real yc(start = yc_start, min=-12.9614813968157204619319348722, max=
        12.9614813968157204619319348722);
  Real xc(start = xc_start, min=-12.9614813968157204619319348722, max=
        12.9614813968157204619319348722);
  Real z1(start = z1_start, min=0, max=5.);

  parameter Real x2_start = if startAtSol then xstar3[9] else 0.1 annotation(Evaluate=false);
  parameter Real y2_start = if startAtSol then xstar3[8] else 0.1 annotation(Evaluate=false);
  parameter Real z2_start = if startAtSol then xstar3[1] else 0.1 annotation(Evaluate=false);
  parameter Real zc_start = if startAtSol then xstar3[2] else 0.1 annotation(Evaluate=false);
  parameter Real y1_start = if startAtSol then xstar3[3] else 0.1 annotation(Evaluate=false);
  parameter Real x1_start = if startAtSol then xstar3[4] else 0.1 annotation(Evaluate=false);
  parameter Real yc_start = if startAtSol then xstar3[6] else 0.1 annotation(Evaluate=false);
  parameter Real xc_start = if startAtSol then xstar3[7] else 0.1 annotation(Evaluate=false);
  parameter Real z1_start = if startAtSol then xstar3[5] else 0.1 annotation(Evaluate=false);
equation
    0 = xc^2+yc^2+zc^2-168.0;
    0 = (7.0+x1)^2+(y1-15.0)^2+z1^2-25.0;
    0 = 44.148+((-2)*x1-21.013)*(xc-3.5064)+(8.6653-2*y1)*(yc-10.667)+(-1.5819-2
      *z1)*(zc-0.79094);
    0 = (x2-7.0)^2+(y2-15.0)^2+z2^2-140.63;
    0 = 230.51+(1.9566-2*x2)*(xc-6.0217)+(20.319-2*y2)*(yc-4.8403)+(6.9226-2*z2)
      *(3.4613+zc);
    0 = (42.669-4*yc)*z1+(4*y1-60)*(zc-0.79094);
    0 = (4.0*xc-14.026)*z1+((-4)*x1-28)*(zc-0.79094);
    0 = (19.361-4*yc)*z2+(4*y2-60)*(3.4613+zc);
    0 = (4.0*xc-24.087)*z2+(28-4*x2)*(3.4613+zc);

  annotation (Documentation(info="  // Nonlinear system of equations
    // Unknowns[9]: 
    //   x2(start = 0)
    //   y2(start = 0)
    //   z2(start = 0)
    //   zc(start = 0)
    //   y1(start = 0)
    //   x1(start = 0)
    //   z1(start = 0)
    //   yc(start = 0)
    //   xc(start = 0)
  algorithm // Torn part

  equation // Residual equations
    0 = xc^2+yc^2+zc^2-168.0;
    0 = (7.0+x1)^2+(y1-15.0)^2+z1^2-25.0;
    0 = 44.148+((-2)*x1-21.013)*(xc-3.5064)+(8.6653-2*y1)*(yc-10.667)+(-1.5819-2
      *z1)*(zc-0.79094);
    0 = (x2-7.0)^2+(y2-15.0)^2+z2^2-140.63;
    0 = 230.51+(1.9566-2*x2)*(xc-6.0217)+(20.319-2*y2)*(yc-4.8403)+(6.9226-2*z2)
      *(3.4613+zc);
    0 = (42.669-4*yc)*z1+(4*y1-60)*(zc-0.79094);
    0 = (4.0*xc-14.026)*z1+((-4)*x1-28)*(zc-0.79094);
    0 = (19.361-4*yc)*z2+(4*y2-60)*(3.4613+zc);
    0 = (4.0*xc-24.087)*z2+(28-4*x2)*(3.4613+zc);
  // Analytic Jacobian was produced, but it is not listed here.
  // To have it listed, set
  //   Advanced.OutputModelicaCodeWithJacobians = true
  // before translation. May give much output,
  // because common subexpression elimination is not activated.
  // End of nonlinear system of equations"));
end Experiment;
