within AlgebraTestSuite.AliasDifficult.JermannChair.SubproblemB;
model Experiment
  "ALIAS difficult, JermannChair from COPRIN (subproblem B with 9 unknowns)"
  parameter Boolean startAtSol = false;

  parameter Real xstar[:] = {1.931850, 0, 0, 0, -0.517638, 0.965926, 0, -0.258819, 0}
    "Solution";

  Real x[:] = {D_z, D4_z, D4_y, D_y, D_x, D4_c, D4_b, D4_a, D4_x};
  Real error = Modelica.Math.Vectors.norm(x - xstar, Modelica.Constants.inf);

  parameter Real D5_a = 0;
  parameter Real D5_b = 1;
  parameter Real D5_c = 0;
  parameter Real Pl1_a = 0.965926;
  parameter Real Pl1_b = 0;
  parameter Real Pl1_c = 0.258819;
  Real D4_x(start = D4_x_start, min=-100, max=100);
  Real D4_z(start = D4_z_start, min=-100, max=100);
  Real D4_c(start = D4_c_start, min=0, max=1);
  Real D4_b(start = D4_b_start, min=-0.99999899999999997124,max=1);
  Real D4_a(start = D4_a_start, min=-0.99999899999999997124,max=1);
  Real D4_y(start = D4_y_start, min=-100, max=100);
  Real D_z(start = D_z_start, min=0, max=51.930999999999997385);
  Real D_y(start = D_y_start, min=-0.99999999999999995475e-6,max=1);
  Real D_x(start = D_x_start, min=-50.517000000000003013, max=49.482999999999996987);
  parameter Real D4_x_start = if startAtSol then xstar[9] else 0.1 annotation(Evaluate=false);
  parameter Real D4_z_start = if startAtSol then xstar[2] else 0.1 annotation(Evaluate=false);
  parameter Real D4_c_start = if startAtSol then xstar[6] else 0.1 annotation(Evaluate=false);
  parameter Real D4_b_start = if startAtSol then xstar[7] else 0.1 annotation(Evaluate=false);
  parameter Real D4_a_start = if startAtSol then xstar[8] else 0.1 annotation(Evaluate=false);
  parameter Real D4_y_start = if startAtSol then xstar[3] else 0.1 annotation(Evaluate=false);
  parameter Real D_z_start = if startAtSol then xstar[1] else 0.1 annotation(Evaluate=false);
  parameter Real D_y_start = if startAtSol then xstar[4] else 0.1 annotation(Evaluate=false);
  parameter Real D_x_start = if startAtSol then xstar[5] else 0.1 annotation(Evaluate=false);
equation
  0 = D_x*Pl1_a + D_y*Pl1_b + D_z*Pl1_c;
  0 = D4_a*(D_y - D4_y) - D4_b*(D_x - D4_x);
  0 = D4_c*(D_x - D4_x) - D4_a*(D_z - D4_z);
  0 = D4_a*D4_x + D4_b*D4_y + D4_c*D4_z;
  0 = D4_a^2 + D4_b^2 + D4_c^2 - 1;
  0 = D5_a*D4_a + D5_b*D4_b + D5_c*D4_c;
  0 = D4_a*D4_z - D4_c*D4_x;
  0 = D4_c*D4_y - D4_b*D4_z;
  0 = D_x^2 + D_y^2 + D_z^2 - 4;
  annotation (Documentation(info="// Nonlinear system of equations
// It depends on the following parameters: 
//   D5_a
//   D5_b
//   D5_c
//   Pl1_a
//   Pl1_b
//   Pl1_c
// Unknowns[9]: 
//   D_z(start = 0)
//   D4_x(start = 0)
//   D4_y(start = 0)
//   D_y(start = 0)
//   D_x(start = 0)
//   D4_c(start = 0)
//   D4_b(start = 0)
//   D4_a(start = 0)
//   D4_z(start = 0)
algorithm // Torn part

equation // Residual equations
0 = D_x*Pl1_a+D_y*Pl1_b+D_z*Pl1_c;
0 = D4_a*(D_y-D4_y)-D4_b*(D_x-D4_x);
0 = D4_c*(D_x-D4_x)-D4_a*(D_z-D4_z);
0 = D4_a*D4_x+D4_b*D4_y+D4_c*D4_z;
0 = D4_a^2+D4_b^2+D4_c^2-1;
0 = D5_a*D4_a+D5_b*D4_b+D5_c*D4_c;
0 = D4_a*D4_z-D4_c*D4_x;
0 = D4_c*D4_y-D4_b*D4_z;
0 = D_x^2+D_y^2+D_z^2-4;
// Analytic Jacobian was produced, but it is not listed here.
// To have it listed, set
//   Advanced.OutputModelicaCodeWithJacobians = true
// before translation. May give much output,
// because common subexpression elimination is not activated.
// End of nonlinear system of equations"));
end Experiment;
