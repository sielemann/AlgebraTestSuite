within AlgebraTestSuite.Lee2001;
model Experiment

  parameter Boolean startAtSol = true;

  parameter Real xstar1[:] = {-0.982238,-0.559985,2.6457,-13.726,0.772484,-0.36706,-9.03957,0.601558}
    "Solution 1";
  parameter Real xstar2[:] = {-1.7068,1.43567,-12.4413,0.732762,6.37791,1.45327,-13.3704,-0.671639}
    "Solution 2";
  parameter Real xstar3[:] = {0.430682,-0.397913,13.4482,-2.89767,-2.59805,5.09557,-1.23078,0.580611}
    "Solution 3";
  parameter Real xstar4[:] = {0.0454434,0.181749,12.2025,0.282078,6.85708,10.8117,8.26004,-1.06643}
    "Solution 4";
  parameter Real xstar5[:] = {0.164257,0.642049,9.18932,-6.45545,8.35964,13.8786,1.54567,0.727746}
    "Solution 5";
  parameter Real xstar6[:] = {-4.67194,6.0419,4.82701,-0.997071,13.1037,2.28183,-12.7753,2.98159}
    "Solution 6";
  parameter Real xstar7[:] = {2.97833,-3.7761,13.4296,3.34722,2.10758,-10.4347,-5.23417,0.4853}
    "Solution 7";
  parameter Real xstar8[:] = {-0.915794,-0.05804,-13.7571,-1.36577,-2.20812,0.896525,-0.944219,-0.02012}
    "Solution 8";

  Real x[:] = {c[2], c[1], p[3,1], p[2,1], p[1,1], q[3,1], q[2,1], c[3]};
  Real error1 = Modelica.Math.Vectors.norm(x - xstar1, Modelica.Constants.inf);
  Real error2 = Modelica.Math.Vectors.norm(x - xstar2, Modelica.Constants.inf);
  Real error3 = Modelica.Math.Vectors.norm(x - xstar3, Modelica.Constants.inf);
  Real error4 = Modelica.Math.Vectors.norm(x - xstar4, Modelica.Constants.inf);
  Real error5 = Modelica.Math.Vectors.norm(x - xstar5, Modelica.Constants.inf);
  Real error6 = Modelica.Math.Vectors.norm(x - xstar6, Modelica.Constants.inf);
  Real error7 = Modelica.Math.Vectors.norm(x - xstar7, Modelica.Constants.inf);
  Real error8 = Modelica.Math.Vectors.norm(x - xstar8, Modelica.Constants.inf);

  //Real p[3,1](start={{-2.2081},{-1.3658},{-13.7571}}); // Solution 1
  Real p[3,1](start={{p_1_1_start},{p_2_1_start},{p_3_1_start}});
  parameter Real p_1_1_start = if startAtSol then xstar1[5] else 0.1 annotation(Evaluate=false);
  parameter Real p_2_1_start = if startAtSol then xstar1[4] else 0.1 annotation(Evaluate=false);
  parameter Real p_3_1_start = if startAtSol then xstar1[3] else 0.1 annotation(Evaluate=false);
  parameter Real L[6,1]={{14},{12},{17},{15},{23},{19}};
  parameter Real a[6,3]={{0,0,0},{5,0,0},{12,-15,0},{18,-6,3},{20,1,-3},{10,8,5}};
  parameter Real b[6,3]={{0,0,0},{4,0,0},{8,-6,0},{13,-3,-5},{14,5,2},{6,10,3}};
  //Real c[3](start={-0.0580,-0.9158,-0.0201}); // Solution 1
  Real c[3](start={c_1_start,c_2_start,c_3_start});
  parameter Real c_1_start = if startAtSol then xstar1[2] else 0.1 annotation(Evaluate=false);
  parameter Real c_2_start = if startAtSol then xstar1[1] else 0.1 annotation(Evaluate=false);
  parameter Real c_3_start = if startAtSol then xstar1[8] else 0.1 annotation(Evaluate=false);
  final Real C[3,3]={{0,-c[3],c[2]},{c[3],0,-c[1]},{-c[2],c[1],0}};
  final Real R[3,3]=1/(1+c[1]^2+c[2]^2+c[3]^2)*{{1+c[1]^2-c[2]^2-c[3]^2, 2*(c[1]*c[2]-c[3]),2*(c[3]*c[1]+c[2])},
                     {2*(c[1]*c[2]+c[3]), 1-c[1]^2+c[2]^2-c[3]^2, 2*(c[2]*c[3]-c[1])},
                     {2*(c[3]*c[1]-c[2]), 2*(c[2]*c[3]+c[1]), 1-c[1]^2-c[2]^2+c[3]^2}};
  Real q[3,1](start={{q_1_1_start},{q_2_1_start},{q_3_1_start}});
        //=transpose(R)*p;
  parameter Real q_1_1_start = 0.1 annotation(Evaluate=false);
  parameter Real q_2_1_start = if startAtSol then xstar1[7] else 0.1 annotation(Evaluate=false);
  parameter Real q_3_1_start = if startAtSol then xstar1[6] else 0.1 annotation(Evaluate=false);

equation
  transpose(matrix(p))*matrix(p)={{L[1,1]^2}} "Equation (2)";
  for i in 2:6 loop
    {{0}}={b[i,:]}*q-{a[i,:]}*p-{a[i,:]}*R*transpose({b[i,:]}) + 1/2*({a[i,:]}*transpose({a[i,:]}) + {b[i,:]}*transpose({b[i,:]}) - {{L[i,1]^2}} + {{L[1,1]^2}})
      "Equation 8";
  end for;
  zeros(3,1) = (identity(3) + C)*q - (identity(3) - C)*p
    "Equation 9 instead of its scalar form in equations 10 to 12";
end Experiment;
