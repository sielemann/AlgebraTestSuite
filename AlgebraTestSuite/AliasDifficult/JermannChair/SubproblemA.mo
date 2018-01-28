within AlgebraTestSuite.AliasDifficult.JermannChair;
package SubproblemA
  model Experiment
    "ALIAS difficult, JermannChair from COPRIN (subproblem A with 14 unknowns)"
    parameter Boolean startAtSol = false;

    parameter Real xstar1[:] =  {0,0,0,0,0,7,7,6,0,0,-1,1,0,6} "Solution 1";
    parameter Real xstar2[:] =  {0,0,0,0,0,7,7,6,0,0,1,-1,0,6} "Solution 2";
    parameter Real xstar3[:] =  {0,0,0,0,0,7,7,6,0,0,-1,-1,0,6} "Solution 3";
    parameter Real xstar4[:] =  {0,0,0,0,0,7,7,6,0,0,1,1,0,6} "Solution 4";
    parameter Real xstar5[:] =  {0,0,-0.211769,0,0,-0.286866,-0.212033,0,1,0,0,-0.035317,-0.999376,0.007484}
      "Solution 5";

    Real x[:] = {D7_z, D7_c, D7_y, D6_z, D6_x, D6_y, G_y, G_x, D6_c, D6_b, D6_a, D7_b, D7_a, D7_x};
    Real error1 = Modelica.Math.Vectors.norm(x - xstar1, Modelica.Constants.inf);
    Real error2 = Modelica.Math.Vectors.norm(x - xstar2, Modelica.Constants.inf);
    Real error3 = Modelica.Math.Vectors.norm(x - xstar3, Modelica.Constants.inf);
    Real error4 = Modelica.Math.Vectors.norm(x - xstar4, Modelica.Constants.inf);
    Real error5 = Modelica.Math.Vectors.norm(x - xstar5, Modelica.Constants.inf);

    parameter Real D5_c = 0;
    parameter Real D5_b = 1;
    parameter Real D5_a = 0;
    parameter Real H_x = 6;
    parameter Real F_x = 0;
    parameter Real F_y = 7;
    Real D7_x(start = D7_x_start, min=-100, max=100);
    Real D7_b(start = D7_b_start, min=-0.99999899999999997124,max=1);
    Real D7_c(start = D7_c_start, min=0, max=1);
    Real D7_a(start = D7_a_start, min=-0.99999899999999997124,max=1);
    Real D7_z(start = D7_z_start, min=-100, max=100);
    Real D7_y(start = D7_y_start, min=-100, max=100);
    Real D6_x(start = D6_x_start, min=-100, max=100);
    Real D6_z(start = D6_z_start, min=-100, max=100);
    Real D6_c(start = D6_c_start, min=0, max=1);
    Real D6_b(start = D6_b_start, min=-0.99999899999999997124,max=1);
    Real D6_a(start = D6_a_start, min=-0.99999899999999997124,max=1);
    Real D6_y(start = D6_y_start, min=-100, max=100);
    Real G_x(start = G_x_start, min=1, max=56);
    Real G_y(start = G_y_start, min=-43, max=57);
    parameter Real D7_x_start = if startAtSol then xstar1[14] else 0.1 annotation(Evaluate=false);
    parameter Real D7_b_start = if startAtSol then xstar1[12] else 0.1 annotation(Evaluate=false);
    parameter Real D7_c_start = if startAtSol then xstar1[2] else 0.1 annotation(Evaluate=false);
    parameter Real D7_a_start = if startAtSol then xstar1[13] else 0.1 annotation(Evaluate=false);
    parameter Real D7_z_start = if startAtSol then xstar1[1] else 0.1 annotation(Evaluate=false);
    parameter Real D7_y_start = if startAtSol then xstar1[3] else 0.1 annotation(Evaluate=false);
    parameter Real D6_x_start = if startAtSol then xstar1[5] else 0.1 annotation(Evaluate=false);
    parameter Real D6_z_start = if startAtSol then xstar1[4] else 0.1 annotation(Evaluate=false);
    parameter Real D6_c_start = if startAtSol then xstar1[9] else 0.1 annotation(Evaluate=false);
    parameter Real D6_b_start = if startAtSol then xstar1[10] else 0.1 annotation(Evaluate=false);
    parameter Real D6_a_start = if startAtSol then xstar1[11] else 0.1 annotation(Evaluate=false);
    parameter Real D6_y_start = if startAtSol then xstar1[6] else 0.1 annotation(Evaluate=false);
    parameter Real G_x_start = if startAtSol then xstar1[8] else 0.1 annotation(Evaluate=false);
    parameter Real G_y_start = if startAtSol then xstar1[7] else 0.1 annotation(Evaluate=false);
  equation
    0 = D6_a*(G_y - D6_y) - D6_b*(G_x - D6_x);
    0 = D6_c*(G_x - D6_x) + D6_a*D6_z;
    0 = D6_a*D6_x + D6_b*D6_y + D6_c*D6_z;
    0 = D5_a*D6_a + D5_b*D6_b + D5_c*D6_c;
    0 = D6_a^2 + D6_b^2 + D6_c^2 - 1;
    0 = D6_c*(F_x - D6_x) + D6_a*D6_z;
    0 = D6_a*(F_y - D6_y) - D6_b*(F_x - D6_x);
    0 = D7_a*(G_y - D7_y) - D7_b*(G_x - D7_x);
    0 = D7_a*D7_y + D7_b*(H_x - D7_x);
    0 = D6_a*D7_a + D6_b*D7_b + D6_c*D7_c;
    0 = D7_a^2 + D7_b^2 + D7_c^2 - 1;
    0 = D7_a*D7_x + D7_b*D7_y + D7_c*D7_z;
    0 = D7_b*D7_z + D7_c*(G_y - D7_y);
    0 = D7_c*D7_y - D7_b*D7_z;
    annotation (Documentation(info="// Nonlinear system of equations
// It depends on the following parameters: 
//   D5_a
//   D5_b
//   D5_c
//   F_x
//   F_y
//   H_x
// Unknowns[14]: 
//   D7_z(start = 0)
//   D7_c(start = 0)
//   D7_b(start = 0)
//   D7_y(start = 0)
//   G_x(start = 0)
//   D6_x(start = 0)
//   D6_b(start = 0)
//   D6_y(start = 0)
//   G_y(start = 0)
//   D7_x(start = 0)
//   D7_a(start = 0)
//   D6_a(start = 0)
//   D6_c(start = 0)
//   D6_z(start = 0)
algorithm // Torn part

equation // Residual equations
0 = D6_a*(G_y-D6_y)-D6_b*(G_x-D6_x);
0 = D6_c*(G_x-D6_x)+D6_a*D6_z;
0 = D6_a*D6_x+D6_b*D6_y+D6_c*D6_z;
0 = D5_a*D6_a+D5_b*D6_b+D5_c*D6_c;
0 = D6_a^2+D6_b^2+D6_c^2-1;
0 = D6_c*(F_x-D6_x)+D6_a*D6_z;
0 = D6_a*(F_y-D6_y)-D6_b*(F_x-D6_x);
0 = D7_a*(G_y-D7_y)-D7_b*(G_x-D7_x);
0 = D7_a*D7_y+D7_b*(H_x-D7_x);
0 = D6_a*D7_a+D6_b*D7_b+D6_c*D7_c;
0 = D7_a^2+D7_b^2+D7_c^2-1;
0 = D7_a*D7_x+D7_b*D7_y+D7_c*D7_z;
0 = D7_b*D7_z+D7_c*(G_y-D7_y);
0 = D7_c*D7_y-D7_b*D7_z;
// Analytic Jacobian was produced, but it is not listed here.
// To have it listed, set
//   Advanced.OutputModelicaCodeWithJacobians = true
// before translation. May give much output,
// because common subexpression elimination is not activated.
// End of nonlinear system of equations"));
  end Experiment;
end SubproblemA;
