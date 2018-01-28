within AlgebraTestSuite.Baharev2009a;
model Experiment "Extraction column with n=22 stages"

  parameter Real xstar1[:] = {0.857816,0.397862,333.46,334.679,0.515953,332.156,0.538775,0.141618,0.311297,331.241,334.761,0.315431,0.325949,0.477098,333.579,0.432787,334.416,0.0422151,0.430631,333.632,0.472556,332.197,333.942,0.605591,0.0219931,0.430842,0.041785,333.595,0.510006,0.0158498,333.926,333.954,0.583051,0.321604,0.435693,330.688,0.410654,331.335,0.289724,0.297464,329.438,328.847,0.189019,0.0882032,0.232908,329.266,0.309925,330.435,330.275,0.251773,0.121254,330.421,0.19797,0.305435,4.73446,4.3285,0.29581,4.13453,0.250225,4.4399,3.96034,4.00013,0.211914,3.88622,0.270914,3.74942,4.41061,3.85667,4.51438,3.85256,0.32234,3.7208,4.22343,0.216244,4.48588,0.194598,3.83656,4.65842,4.67182,0.20389,4.51493,0.31511,0.502363,0.136056,4.07612,3.75184,3.67992,348.779}
    "Solution 1";
  parameter Real xstar2[:] = {0.855764,0.0853734,334.463,332.28,0.418919,332.26,0.411315,0.123968,0.419015,331.994,332.511,0.393748,0.111665,0.401748,332.424,0.474152,333.41,0.0637722,0.480059,333.583,0.462656,333.19,333.196,0.498449,0.0343344,0.502438,0.0645465,330.547,0.483234,0.0167149,333.09,333.535,0.465121,0.0181884,0.189405,330.885,0.117183,329.921,0.0866519,0.025218,329.863,329.309,0.0709402,0.0264926,0.0755112,329.764,0.0799846,329.598,329.257,0.0205204,0.0622924,328.929,0.0757644,0.043143,4.37995,4.36189,0.030265,4.42747,0.0114333,4.3905,4.38425,4.29173,0.0248357,4.29775,0.0185124,4.18303,4.24709,4.23061,4.16665,4.12908,0.0571511,4.20813,4.17863,0.0841737,4.11676,0.0944534,4.14194,4.19695,4.15086,0.14257,4.17507,0.174962,0.503942,0.173397,4.05207,3.78916,3.31142,347.071}
    "Solution 1";
  parameter Real xstar3[:] = {0.875299,0.088771,335.521,333.251,0.422009,332.889,0.40251,0.115962,0.400393,332.804,332.773,0.400529,0.106487,0.400831,332.759,0.475529,333.483,0.0573555,0.487492,333.549,0.489686,333.532,333.515,0.490445,0.033255,0.490957,0.024715,333.503,0.491387,0.0177664,333.496,333.492,0.491759,0.0120494,0.195025,330.697,0.117741,329.987,0.0823285,0.0109282,329.683,329.517,0.061673,0.011166,0.0478734,329.409,0.0377889,329.33,329.265,0.0145837,0.0299191,329.204,0.0234521,0.0172358,4.37511,4.36791,0.0128556,4.35807,0.0117756,4.34469,4.3259,4.29764,0.0110392,4.24985,0.0115696,4.14969,4.14574,4.14096,4.13513,4.12795,0.0438889,4.11925,4.11045,0.0749975,4.11502,0.100742,4.1115,4.10561,4.09515,0.131648,4.07294,0.1568,0.558285,0.178607,4.00412,3.71216,3.24489,349.687}
    "Solution 1";

  Real x[:] = {X[3,23], X[2,23], T[21], T[20], X[3,21], T[19], X[3,20], X[2,19], X[3,19], T[18], T[17], X[3,18], X[2,18], X[3,17], T[16], X[3,16], T[15], X[2,15], X[3,15], T[14], X[3,14], T[13], T[12], X[3,13], X[2,13], X[3,12], X[2,12], T[11], X[3,11], X[2,11], T[10], T[9], X[3,10], X[2,10], X[3,9], T[8], X[3,8], T[7], X[3,7], X[2,7], T[6], T[5], X[3,6], X[2,6], X[3,5], T[4], X[3,4], T[3], T[2], X[2,3], X[3,3], T[1], X[3,2], X[2,2], V[2], V[3], X[2,4], V[4], X[2,5], V[5], V[6], V[7], X[2,8], V[8], X[2,9], V[9], V[10], V[11], V[12], V[13], X[2,14], V[14], V[15], X[2,16], V[16], X[2,17], V[17], V[18], V[19], X[2,20], V[20], X[2,21], X[3,22], X[2,22], V[21], V[22], V[23], T[22]};
  Real error1 = Modelica.Math.Vectors.norm(x - xstar1, Modelica.Constants.inf);
  Real error2 = Modelica.Math.Vectors.norm(x - xstar2, Modelica.Constants.inf);
  Real error3 = Modelica.Math.Vectors.norm(x - xstar3, Modelica.Constants.inf);

  parameter Integer N = 22 "Number of stages";
  parameter Integer N_F1 = integer(9/22*N) "Feed stage location 1";
  parameter Integer N_F2 = integer(16/22*N) "Feed stage location 2";
  parameter Integer C = 3
    "Number of components, 1 = acetone, 2 = methanol, 3 = water";
  parameter Real R = 5 "Reflux ratio";
  parameter Real D = 0.73 "Distillate molar flow rate";

  // <TBC>
  parameter Real X_acetone_min = 0.92
    "Purity restriction on the distillate composition";
  parameter Real X_min = 0.001
    "Lower bound on all mol fractions in the entire column";
  // </TBC>

  // Feed locations and values //////////////////////////////////////////////////////////////////////////////
  parameter Real F[N+1](fixed=false, start=zeros(N+1))
    "Feed values for all components, have to add +1 to the index in equations";
  parameter Real f[C,N+1](fixed=false, start=zeros(C, N+1))
    "Feed values for each component, have to add +1 to second index in equations";
  /*
  Careful with stage indeces!
  param F{j in 0..N};
  param f{i in 1..C, j in 0..N};
  */
  parameter Boolean includePlots = true annotation(Evaluate=true);
  UserInteraction.Outputs.SpatialPlot spatialPlot(
    x=X[1, :],
    y=1:N + 1,
    minX=0,
    maxX=1,
    minY=1,
    maxY=N + 1) if includePlots annotation (extent=[-20,80; 40,20], Placement(transformation(extent=
           {{-20,80},{40,20}}, rotation=0)));
  UserInteraction.Outputs.SpatialPlot2 spatialPlot1(
    minX1=0,
    x1=X[2, :],
    x2=X[3, :],
    y1=1:N + 1,
    y2=1:N + 1,
    minY1=1,
    maxY1=N + 1,
    color1={0,255,0},
    color2={0,255,255},
    maxX1=1) if includePlots            annotation (extent=[-20,80; 40,20], Placement(
        transformation(extent={{-20,80},{40,20}}, rotation=0)));
  UserInteraction.Outputs.SpatialPlot spatialPlot2(
    y=1:N + 1,
    minX=0,
    maxX=1,
    minY=1,
    maxY=N + 1,
    x=y[1, :]) if includePlots annotation (extent=[-20,0; 40,-60], Placement(transformation(extent={
            {-20,0},{40,-60}}, rotation=0)));
  UserInteraction.Outputs.SpatialPlot2 spatialPlot3(
    minX1=0,
    y1=1:N + 1,
    y2=1:N + 1,
    minY1=1,
    maxY1=N + 1,
    color1={0,255,0},
    color2={0,255,255},
    x1=y[2, :],
    x2=y[3, :],
    maxX1=1) if includePlots    annotation (extent=[-20,0; 40,-60], Placement(transformation(extent=
           {{-20,0},{40,-60}}, rotation=0)));
initial equation
  // Feed stage 1
  f[1, N_F1+1] =  0.0;
  f[2, N_F1+1] =  0.0;
  f[3, N_F1+1] =  2.0;
  // Feed stage 2
  f[1, N_F2+1] =  0.783;
  f[2, N_F2+1] =  0.217;
  f[3, N_F2+1] =  0.0;
  // Non-feed stages
  for i in 1:(N+1) loop
    if i<>(N_F1+1) and i<>(N_F2+1) then
      f[:,i]=zeros(3);
    end if;
  end for;
  // Summarize feeds for all stages
  for i in 1:(N+1) loop
    F[i]=sum(f[:,i]);
  end for;
equation
  // Further model parameters //////////////////////////////////////////////////////////////////////////////
  // Component specific properties
public
  parameter Real lambda[C]={6.960, 8.426, 9.717}
    "Heat of vaporization at normal boiling point, kcal/mol ";
  parameter Real a[C] = {16.732, 18.510, 18.304}
    "Parameter a for Antoine equation";
  parameter Real b[C] = {2975.9, 3593.4, 3816.4}
    "Parameter b for Antoine equation";
  parameter Real c[C] = {-34.523, -35.225, -46.130}
    "Parameter c for Antoine equation";
  parameter Real Vm[C] = {74.050, 40.729, 18.069}
    "Liquid molar volume, cm3/mol";
  parameter Real k[C,C](fixed=false)
    "Parameters of the Wilson equation, cal/mol";
initial equation
  k[1,2] = -157.981;
  k[1,3] = 393.27;
  k[2,3] = -52.605;
  k[2,1] = 592.638;
  k[3,1] = 1430.0;
  k[3,2] = 620.63;
  k[1,1] = 0.0;
  k[2,2] = 0.0;
  k[3,3] = 0.0;

equation

public
  parameter Real RG =  1.98721 "Regnault's gas constant, cal/(mol K)";
  parameter Real P =  760.0;

  // Variables //////////////////////////////////////////////////////////////////////////////
  /*
  var X{i in 1..C, j in 0..N  } >= X_L[i,j], <= X_U[i,j], := X_0[i,j];
  */
  Real X[C,N + 1](start={{X_1_1_start,X_1_2_start,X_1_3_start,X_1_4_start,
        X_1_5_start,X_1_6_start,X_1_7_start,X_1_8_start,X_1_9_start,
        X_1_10_start,X_1_11_start,X_1_12_start,X_1_13_start,X_1_14_start,
        X_1_15_start,X_1_16_start,X_1_17_start,X_1_18_start,X_1_19_start,
        X_1_20_start,X_1_21_start,X_1_22_start,X_1_23_start},{X_2_1_start,
        X_2_2_start,X_2_3_start,X_2_4_start,X_2_5_start,X_2_6_start,
        X_2_7_start,X_2_8_start,X_2_9_start,X_2_10_start,X_2_11_start,
        X_2_12_start,X_2_13_start,X_2_14_start,X_2_15_start,X_2_16_start,
        X_2_17_start,X_2_18_start,X_2_19_start,X_2_20_start,X_2_21_start,
        X_2_22_start,X_2_23_start},{X_3_1_start,X_3_2_start,X_3_3_start,
        X_3_4_start,X_3_5_start,X_3_6_start,X_3_7_start,X_3_8_start,
        X_3_9_start,X_3_10_start,X_3_11_start,X_3_12_start,X_3_13_start,
        X_3_14_start,X_3_15_start,X_3_16_start,X_3_17_start,X_3_18_start,
        X_3_19_start,X_3_20_start,X_3_21_start,X_3_22_start,X_3_23_start}})
    "Have to add +1 to second index in equations";
  parameter Real X_1_1_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_2_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_3_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_4_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_5_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_6_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_7_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_8_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_9_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_10_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_11_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_12_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_13_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_14_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_15_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_16_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_17_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_18_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_19_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_20_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_21_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_22_start = 0.5 annotation(Evaluate=false);
  parameter Real X_1_23_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_1_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_2_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_3_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_4_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_5_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_6_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_7_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_8_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_9_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_10_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_11_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_12_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_13_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_14_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_15_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_16_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_17_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_18_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_19_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_20_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_21_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_22_start = 0.5 annotation(Evaluate=false);
  parameter Real X_2_23_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_1_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_2_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_3_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_4_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_5_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_6_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_7_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_8_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_9_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_10_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_11_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_12_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_13_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_14_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_15_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_16_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_17_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_18_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_19_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_20_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_21_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_22_start = 0.5 annotation(Evaluate=false);
  parameter Real X_3_23_start = 0.5 annotation(Evaluate=false);

  /*
  var y{i in 1..C, j in 1..N+1} >= y_L[i,j], <= y_U[i,j], := y_0[i,j];
  */
  Real y[C,N+1];

  /*
  var K{i in 1..C, j in 1..N  } >= K_L[i,j], <= K_U[i,j], := K_0[i,j];
  */
  Real K[C,N];

  /*
  var V{j in 1..N+1} >= V_L[j], <= V_U[j], := V_0[j];
  */
  Real V[N+1](start = {
    V_1_start,
    V_2_start,
    V_3_start,
    V_4_start,
    V_5_start,
    V_6_start,
    V_7_start,
    V_8_start,
    V_9_start,
    V_10_start,
    V_11_start,
    V_12_start,
    V_13_start,
    V_14_start,
    V_15_start,
    V_16_start,
    V_17_start,
    V_18_start,
    V_19_start,
    V_20_start,
    V_21_start,
    V_22_start,
    V_23_start});
  parameter Real V_1_start = 4 annotation(Evaluate=false);
  parameter Real V_2_start = 4 annotation(Evaluate=false);
  parameter Real V_3_start = 4 annotation(Evaluate=false);
  parameter Real V_4_start = 4 annotation(Evaluate=false);
  parameter Real V_5_start = 4 annotation(Evaluate=false);
  parameter Real V_6_start = 4 annotation(Evaluate=false);
  parameter Real V_7_start = 4 annotation(Evaluate=false);
  parameter Real V_8_start = 4 annotation(Evaluate=false);
  parameter Real V_9_start = 4 annotation(Evaluate=false);
  parameter Real V_10_start = 4 annotation(Evaluate=false);
  parameter Real V_11_start = 4 annotation(Evaluate=false);
  parameter Real V_12_start = 4 annotation(Evaluate=false);
  parameter Real V_13_start = 4 annotation(Evaluate=false);
  parameter Real V_14_start = 4 annotation(Evaluate=false);
  parameter Real V_15_start = 4 annotation(Evaluate=false);
  parameter Real V_16_start = 4 annotation(Evaluate=false);
  parameter Real V_17_start = 4 annotation(Evaluate=false);
  parameter Real V_18_start = 4 annotation(Evaluate=false);
  parameter Real V_19_start = 4 annotation(Evaluate=false);
  parameter Real V_20_start = 4 annotation(Evaluate=false);
  parameter Real V_21_start = 4 annotation(Evaluate=false);
  parameter Real V_22_start = 4 annotation(Evaluate=false);
  parameter Real V_23_start = 4 annotation(Evaluate=false);

  /*
  var v{i in 1..C, j in 1..N+1} >= v_L[i,j], <= v_U[i,j], := v_0[i,j];
  */
  Real v[C,N+1];

  /*
  var l{i in 1..C, j in 0..N  } >= l_L[i,j], <= l_U[i,j], := l_0[i,j];
  */
  Real l[C,N+1] "Have to add +1 to second index in equations";

  /*
  var Q >= Q_L, <= Q_U, := Q_0;
  */
  Real Q;

  /*
  var T{j in 1..N} >= 327.0, <= 374.0, := T_0[j];
  */
  Real T[N](start={T_1_start,T_2_start,T_3_start,T_4_start,T_5_start,T_6_start,
        T_7_start,T_8_start,T_9_start,T_10_start,T_11_start,T_12_start,
        T_13_start,T_14_start,T_15_start,T_16_start,T_17_start,T_18_start,
        T_19_start,T_20_start,T_21_start,T_22_start});
  parameter Real T_1_start = 300 annotation(Evaluate=false);
  parameter Real T_2_start = 300 annotation(Evaluate=false);
  parameter Real T_3_start = 300 annotation(Evaluate=false);
  parameter Real T_4_start = 300 annotation(Evaluate=false);
  parameter Real T_5_start = 300 annotation(Evaluate=false);
  parameter Real T_6_start = 300 annotation(Evaluate=false);
  parameter Real T_7_start = 300 annotation(Evaluate=false);
  parameter Real T_8_start = 300 annotation(Evaluate=false);
  parameter Real T_9_start = 300 annotation(Evaluate=false);
  parameter Real T_10_start = 300 annotation(Evaluate=false);
  parameter Real T_11_start = 300 annotation(Evaluate=false);
  parameter Real T_12_start = 300 annotation(Evaluate=false);
  parameter Real T_13_start = 300 annotation(Evaluate=false);
  parameter Real T_14_start = 300 annotation(Evaluate=false);
  parameter Real T_15_start = 300 annotation(Evaluate=false);
  parameter Real T_16_start = 300 annotation(Evaluate=false);
  parameter Real T_17_start = 300 annotation(Evaluate=false);
  parameter Real T_18_start = 300 annotation(Evaluate=false);
  parameter Real T_19_start = 300 annotation(Evaluate=false);
  parameter Real T_20_start = 300 annotation(Evaluate=false);
  parameter Real T_21_start = 300 annotation(Evaluate=false);
  parameter Real T_22_start = 300 annotation(Evaluate=false);

  // Defined variables //////////////////////////////////////////////////////////////////////////////
  /*
  var L{j in 0..N} = V[j+1] - D + sum{i1 in 0..j} F[i1];
  */
  Real L[N+1] = {V[j] - D + sum(F[1:j]) for j in 1:N+1}
    "Have to add +1 to the index in equations";

  /*
  var H{j in 1..N+1} = sum{i in 1..C} lambda[i]*y[i,j];
  */
  Real H[N+1] = {sum(lambda.*y[:,j]) for j in 1:N+1};

  /*
  var rcp_T{j in 1..N} = 1.0/T[j];
  */
  Real rcp_T[N] = ones(N)./T;

  /*
  var p{i in 1..C, j in 1..N} = exp(a[i]-b[i]/(T[j]+c[i]));
  */
  Real p[C, N];
equation
  for j in 1:N loop
    p[:,j] = Modelica.Math.exp(a-b./(ones(3)*T[j]+c));
  end for;

  /*
  var Lambda{i1 in 1..C, i2 in 1..C, j in 1..N} =
    Vm[i2]/Vm[i1]*exp((-k[i1,i2]/RG)*rcp_T[j]);
  */
public
  Real Lambda[C,C,N];
equation
  for j in 1:N loop
    for i2 in 1:C loop
      for i1 in 1:C loop
        Lambda[i1,i2,j] = Vm[i2]/Vm[i1]*Modelica.Math.exp((-k[i1,i2]/RG)*rcp_T[j]);
      end for;
    end for;
  end for;

  /*
  var sum_xLambda{i in 1..C, j in 1..N} = sum{i1 in 1..C} (X[i1,j]*Lambda[i,i1,j]);
  */
public
  Real sum_xLambda[C,N];
equation
  for j in 1:N loop
    for i in 1:C loop
      sum_xLambda[i,j] = sum(X[:,j+1].*Lambda[i,:,j]);
    end for;
  end for;
  /*
  var rcp_sum_xLambda{i in 1..C, j in 1..N} = 1.0/sum_xLambda[i,j];
  */
public
  Real rcp_sum_xLambda[C,N] = ones(C,N)./sum_xLambda;

  /*
  var gamma{i in 1..C, j in 1..N} =
    exp( -log(sum_xLambda[i,j]) + 1.0 - (sum{i2 in 1..C} (X[i2,j]*Lambda[i2,i,j]*rcp_sum_xLambda[i2,j])) );
  */
  Real gamma[C,N];
equation
  for j in 1:N loop
    for i in 1:C loop
      gamma[i,j] = Modelica.Math.exp( -Modelica.Math.log(sum_xLambda[i,j]) + 1.0 - (sum( X[:,j+1].*Lambda[:,i,j].*rcp_sum_xLambda[:,j])));
    end for;
  end for;

  // Equations //////////////////////////////////////////////////////////////////////////////
  /*
  M_aux_y1_x0{i in 1..C}:
        X[i,0] - y[i,1] = 0.0;
  */
  for i in 1:C loop
    X[i,0+1] - y[i,1] = 0.0;
  end for;

  /*
  M_aux_yNp1_xN{i in 1..C}:
        y[i,N+1] - X[i,N] = 0.0;
  */
  for i in 1:C loop
    y[i,N+1] - X[i,N+1] = 0.0;
  end for;

  /*
  M_aux_V1:
        V[1] - (R+1.0)*D = 0.0;
  */
  V[1] - (R+1.0)*D = 0.0;

  /*
  M_aux_l{i in 1..C, j in 0..N}:
        l[i,j] - L[j]*X[i,j] = 0.0;
  */
  for j in 1:N+1 loop
    for i in 1:C loop
      l[i,j] - L[j]*X[i,j] = 0.0 "No extra +1 because j is already +1";
    end for;
  end for;

  /*
  M_aux_v{i in 1..C, j in 1..N+1}:
        v[i,j] - V[j]*y[i,j] = 0.0;
  */
  for j in 1:N+1 loop
    for i in 1:C loop
      v[i,j] - V[j]*y[i,j] = 0.0;
    end for;
  end for;

  /*
  M_eq{i in 1..C-1, j in 1..N}:
        l[i,j] + D*y[i,1] - v[i,j+1] - sum{i1 in 1..j} f[i,i1] = 0.0;
  */
  for j in 1:N loop
    for i in 1:C-1 loop
      l[i,j+1] + D*y[i,1] - v[i,j+1] - sum(f[i,1+1:j+1]) = 0.0;
    end for;
  end for;

  /*
  E_eq{i in 1..C, j in 1..N}:
        y[i,j] - K[i,j]*X[i,j] = 0.0;
  */
  for j in 1:N loop
    for i in 1:C loop
      y[i,j] - K[i,j]*X[i,j+1] = 0.0;
    end for;
  end for;

  /*
  S_X_eq{j in 1..N}:
        sum{i in 1..C} X[i,j] - 1.0 = 0.0;
  */
  for j in 1:N loop
    sum(X[:,j+1]) - 1.0 = 0.0;
  end for;

  /*
  S_y_eq{j in 1..N}:
        sum{i in 1..C} y[i,j] - 1.0 = 0.0;
  */
  for j in 1:N loop
    sum(y[:,j]) - 1.0 = 0.0;
  end for;

  /*
  H_eq{j in 1..N+1}:
        Q - V[j]*H[j] = 0.0;
  */
  for j in 1:N+1 loop
    Q - V[j]*H[j] = 0.0;
  end for;

  /*
  E_aux_K{i in 1..C, j in 1..N}:
        K[i,j] - gamma[i,j]*(p[i,j]/P) = 0.0;
  */
  for j in 1:N loop
    for i in 1:C loop
      K[i,j] - gamma[i,j]*(p[i,j]/P) = 0.0;
    end for;
  end for;
  annotation (Diagram(
      graphics={
        Text(
          extent={{-94,94},{-58,84}},
          lineColor={255,0,0},
          textString=
               "Acetone"),
        Text(
          extent={{-94,78},{-58,68}},
          lineColor={128,255,0},
          textString=
               "Methanol"),
        Text(
          extent={{-94,64},{-58,54}},
          lineColor={0,255,255},
          textString=
               "Water"),
        Text(
          extent={{-20,88},{40,80}},
          lineColor={0,0,255},
          textString=
               "Liquid mole fraction"),
        Text(
          extent={{-20,8},{40,0}},
          lineColor={0,0,255},
          textString=
               "Gas mole fraction")},
      Text(
        extent=[-94,94; -58,84],
        string="Acetone",
        style(color=1, rgbcolor={255,0,0})),
      Text(
        extent=[-94,78; -58,68],
        string="Methanol",
        style(color=53, rgbcolor={128,255,0})),
      Text(
        extent=[-94,64; -58,54],
        string="Water",
        style(color=4, rgbcolor={0,255,255})),
      Text(
        extent=[-20,88; 40,80],
        string="Liquid mole fraction",
        style(color=3, rgbcolor={0,0,255})),
      Text(
        extent=[-20,8; 40,0],
        style(color=3, rgbcolor={0,0,255}),
        string="Gas mole fraction")));
end Experiment;
