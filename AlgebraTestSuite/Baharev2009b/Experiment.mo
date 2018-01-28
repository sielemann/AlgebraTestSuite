within AlgebraTestSuite.Baharev2009b;
model Experiment
  parameter Real xstar[:] = {336.424,0.108577,336.449,336.464,0.106617,0.0049409,0.104945,336.482,336.501,0.103776,0.00786342,336.523,0.103399,0.00970052,336.55,0.104231,0.0119149,336.588,0.106967,0.0147065,336.591,0.112967,0.0184815,0.11232,336.596,0.111292,336.605,0.109699,336.62,0.107323,336.644,0.104002,336.687,0.0998501,336.759,0.0957556,336.89,0.0945892,337.181,0.10625,338.479,0.0774215,0.0476505,0.0345271,0.0276246,0.0237153,0.0214283,0.020071,0.01926,0.0187737,0.00629681,0.00376077,0.110656,336.413,0.201966,0.112729,0.00184683,0.187846,0.00273455,336.435}
    "Solution";

  Real x[:] = {T[2], X[3,3], T[4], T[5], X[3,4], X[2,4], X[3,5], T[6], T[7], X[3,6], X[2,6], T[8], X[3,7], X[2,7], T[9], X[3,8], X[2,8], T[10], X[3,9], X[2,9], T[11], X[3,10], X[2,10], X[3,11], T[12], X[3,12], T[13], X[3,13], T[14], X[3,14], T[15], X[3,15], T[16], X[3,16], T[17], X[3,17], T[18], X[3,18], T[19], X[3,19], T[20], X[2,19], X[2,18], X[2,17], X[2,16], X[2,15], X[2,14], X[2,13], X[2,12], X[2,11], X[2,5], X[2,3], X[3,2], T[1], X[3,20], X[3,1], X[2,1], X[2,20], X[2,2], T[3]};
  Real error = Modelica.Math.Vectors.norm(x - xstar, Modelica.Constants.inf);

  parameter Integer N=20 "Number of stages";
  parameter Integer N_F=10 "Feed stage location";
  parameter Integer C=3 "Number of components";
  parameter Real D=0.42 "Distillate molar flow rate";
  parameter Real V=1.38 "Vapor flow rate";

  // Feed locations and values //////////////////////////////////////////////////////////////////////////////
  parameter Real F[N + 1](fixed=false)
    "Feed values for all components, have to add +1 to the index in equations";
  parameter Real f[C,N + 1](fixed=false)
    "Feed values for each component, have to add +1 to second index in equations";

  parameter Boolean includePlots = true annotation(Evaluate=true);

  UserInteraction.Outputs.SpatialPlot spatialPlot(
    x=X[1, :],
    minX=0,
    maxX=1,
    minY=1,
    y=1:N,
    maxY=N) if  includePlots    annotation (extent=[-40,60; 60,-40], Placement(transformation(
          extent={{-40,60},{60,-40}}, rotation=0)));
  UserInteraction.Outputs.SpatialPlot2 spatialPlot1(
    minX1=0,
    x1=X[2, :],
    x2=X[3, :],
    minY1=1,
    color1={0,255,0},
    color2={0,255,255},
    y1=1:N,
    y2=1:N,
    maxY1=N,
    maxX1=1) if  includePlots           annotation (extent=[-40,60; 60,-40], Placement(
        transformation(extent={{-40,60},{60,-40}}, rotation=0)));
initial equation
  // Feed stage
  f[1, N_F + 1] = 0.4098370;
  f[2, N_F + 1] = 0.01229769;
  f[3, N_F + 1] = 0.06090665;
  // Non-feed stages
  for i in 1:(N + 1) loop
    if i <> (N_F + 1) then
      f[:, i] = zeros(3);
    end if;
  end for;
  // Summarize feeds for all stages
  for i in 1:(N + 1) loop
    F[i] = sum(f[:, i]);
  end for;

public
  parameter Real L[N + 1]={V - D + sum(F[1:j]) for j in 1:N + 1}
    "Have to add +1 to the index in equations";
  parameter Real B=F[N_F + 1] - D;

  parameter Real a[C]={23.4832,20.5110,20.9064}
    "Parameter a for Antoine equation";
  parameter Real b[C]={-3634.01,-2664.30,-3096.52}
    "Parameter b for Antoine equation";
  parameter Real c[C]={-33.768,-79.483,-53.668}
    "Parameter c for Antoine equation";

  parameter Real r[C,C](fixed=false);
initial equation
  r[1, 2] = 0.7411;
  r[1, 3] = 0.9645;
  r[2, 3] = -1.4350;

  r[2, 1] = -1.0250;
  r[3, 1] = -0.9645;
  r[3, 2] = 2.7470;

  r[1, 1] = 0.0;
  r[2, 2] = 0.0;
  r[3, 3] = 0.0;
public
  parameter Real s[C,C](fixed=false);
initial equation
  s[1, 2] = -477.00;
  s[1, 3] = -903.1024;
  s[2, 3] = 768.20;

  s[2, 1] = 72.78;
  s[3, 1] = -140.9995;
  s[3, 2] = -1419.0;

  s[1, 1] = 0.0;
  s[2, 2] = 0.0;
  s[3, 3] = 0.0;
public
  parameter Real P=100000.0;

  /*
  var X{i in 1..C, j in 1..N} >= X_L[i,j], <= X_U[i,j], := X_0[i,j];
  */
  //Real X[C,N](each start=0.5);
  //*
  Real X[C,N](start={{X_1_1_start,X_1_2_start,X_1_3_start,X_1_4_start,
        X_1_5_start,X_1_6_start,X_1_7_start,X_1_8_start,X_1_9_start,
        X_1_10_start,X_1_11_start,X_1_12_start,X_1_13_start,X_1_14_start,
        X_1_15_start,X_1_16_start,X_1_17_start,X_1_18_start,X_1_19_start,
        X_1_20_start},{X_2_1_start,X_2_2_start,X_2_3_start,X_2_4_start,
        X_2_5_start,X_2_6_start,X_2_7_start,X_2_8_start,X_2_9_start,
        X_2_10_start,X_2_11_start,X_2_12_start,X_2_13_start,X_2_14_start,
        X_2_15_start,X_2_16_start,X_2_17_start,X_2_18_start,X_2_19_start,
        X_2_20_start},{X_3_1_start,X_3_2_start,X_3_3_start,X_3_4_start,
        X_3_5_start,X_3_6_start,X_3_7_start,X_3_8_start,X_3_9_start,
        X_3_10_start,X_3_11_start,X_3_12_start,X_3_13_start,X_3_14_start,
        X_3_15_start,X_3_16_start,X_3_17_start,X_3_18_start,X_3_19_start,
        X_3_20_start}});
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
  //*/

  /*
  var K{i in 1..C, j in 1..N} >= K_L[i,j], <= K_U[i,j], := K_0[i,j];
  */
  Real K[C,N];

  /*
  var T{j in 1..N} >= 336.3, <= 383.4, := T_0[j];
  */
  Real T[N](nominal=300, start = {
    T_1_start,
    T_2_start,
    T_3_start,
    T_4_start,
    T_5_start,
    T_6_start,
    T_7_start,
    T_8_start,
    T_9_start,
    T_10_start,
    T_11_start,
    T_12_start,
    T_13_start,
    T_14_start,
    T_15_start,
    T_16_start,
    T_17_start,
    T_18_start,
    T_19_start,
    T_20_start});
  parameter Real T_1_start = 336 annotation(Evaluate=false);
  parameter Real T_2_start = 336 annotation(Evaluate=false);
  parameter Real T_3_start = 336 annotation(Evaluate=false);
  parameter Real T_4_start = 336 annotation(Evaluate=false);
  parameter Real T_5_start = 336 annotation(Evaluate=false);
  parameter Real T_6_start = 336 annotation(Evaluate=false);
  parameter Real T_7_start = 336 annotation(Evaluate=false);
  parameter Real T_8_start = 336 annotation(Evaluate=false);
  parameter Real T_9_start = 336 annotation(Evaluate=false);
  parameter Real T_10_start = 336 annotation(Evaluate=false);
  parameter Real T_11_start = 336 annotation(Evaluate=false);
  parameter Real T_12_start = 336 annotation(Evaluate=false);
  parameter Real T_13_start = 336 annotation(Evaluate=false);
  parameter Real T_14_start = 336 annotation(Evaluate=false);
  parameter Real T_15_start = 336 annotation(Evaluate=false);
  parameter Real T_16_start = 336 annotation(Evaluate=false);
  parameter Real T_17_start = 336 annotation(Evaluate=false);
  parameter Real T_18_start = 336 annotation(Evaluate=false);
  parameter Real T_19_start = 337 annotation(Evaluate=false);
  parameter Real T_20_start = 338 annotation(Evaluate=false);
  /*
  Real T[N](nominal=330, start={336.413,336.424,336.435,336.449,336.464,336.482,336.501,
        336.523,336.55,336.588,336.591,336.596,336.605,336.62,336.644,336.687,
        336.759,336.89,337.181,338.479});
  */

  /*
  var p{i in 1..C, j in 1..N} = exp(a[i]+b[i]/(T[j]+c[i])); // Shouldn't this be a[i]-b[i]???
  */
  Real p[C,N];
equation
  for j in 1:N loop
    p[:, j] = Modelica.Math.exp(a + b ./ (ones(C)*T[j] + c));
  end for;

  /*
  var rcp_T{j in 1..N} = 1.0/T[j];
  */
public
  Real rcp_T[N]=ones(N) ./ T;

  /*
  var Lambda{i1 in 1..C, i2 in 1..C, j in 1..N} = 
    exp(r[i1,i2]+s[i1,i2]*rcp_T[j]);
  */
public
  Real Lambda[C,C,N];
equation
  for j in 1:N loop
    for i2 in 1:C loop
      for i1 in 1:C loop
        Lambda[i1, i2, j] = Modelica.Math.exp(r[i1, i2] + s[i1, i2]*rcp_T[j]);
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
      sum_xLambda[i, j] = sum(X[:, j] .* Lambda[i, :, j]);
    end for;
  end for;
  /*
  var rcp_sum_xLambda{i in 1..C, j in 1..N} = 1.0/sum_xLambda[i,j];
  */
public
  Real rcp_sum_xLambda[C,N]=ones(C, N) ./ sum_xLambda;

  /*
  var gamma{i in 1..C, j in 1..N} =
    exp( -log(sum_xLambda[i,j]) + 1.0 - (sum{i2 in 1..C} (X[i2,j]*Lambda[i2,i,j]*rcp_sum_xLambda[i2,j])) );
  */
  Real gamma[C,N];
equation
  for j in 1:N loop
    for i in 1:C loop
      gamma[i, j] = Modelica.Math.exp(-Modelica.Math.log(sum_xLambda[i, j]) +
        1.0 - (sum(X[:, j] .* Lambda[:, i, j] .* rcp_sum_xLambda[:, j])));
    end for;
  end for;

  /*
  E_aux_K{j in 1..N, i in 1..C}:
        K[i,j] - gamma[i,j]*(p[i,j]/P) = 0.0;
  */
  for j in 1:N loop
    for i in 1:C loop
      K[i, j] - gamma[i, j]*(p[i, j]/P) = 0.0;
    end for;
  end for;

  /*
  M_tot{i in 1..C}:
        D*(K[i,1]*X[i,1]) + B*X[i,N] - f[i,N_F] = 0.0;
  */
  for i in 1:C loop
    D*(K[i, 1]*X[i, 1]) + B*X[i, N] - f[i, N_F + 1] = 0.0;
  end for;

  /*
  M_eq{j in 1..N-1, i in 1..C}:
        L[j]*X[i,j] + sum{i1 in j+1..N} f[i,i1] - B*X[i,N] - V*(K[i,j+1]*X[i,j+1]) = 0.0;
  Was:
  M_eq{i in 1..C-1, j in 1..N}:
        l[i,j] + D*y[i,1] - v[i,j+1] - sum{i1 in 1..j} f[i,i1] = 0.0;
  */
  for j in 1:N - 1 loop
    for i in 1:C loop
      L[j+1]*X[i, j] + sum(f[i, j + 1 + 1:N + 1]) - B*X[i, N] - V*(K[i, j + 1]*X[
        i, j + 1]) = 0.0;
    end for;
  end for;

  /*
  S_X_eq{j in 1..N}:
        sum{i in 1..C} X[i,j] - 1.0 = 0.0;
  */
  for j in 1:N loop
    sum(X[:, j]) - 1.0 = 0.0;
  end for;

  annotation (Diagram(
      graphics={
        Text(
          extent={{-94,94},{-58,84}},
          lineColor={255,0,0},
          textString=
               "Component 1"),
        Text(
          extent={{-94,78},{-58,68}},
          lineColor={128,255,0},
          textString=
               "Component 2"),
        Text(
          extent={{-94,64},{-58,54}},
          lineColor={0,255,255},
          textString=
               "Component 3")},
      Text(
        extent=[-94,94; -58,84],
        style(color=1, rgbcolor={255,0,0}),
        string="Component 1"),
      Text(
        extent=[-94,78; -58,68],
        style(color=53, rgbcolor={128,255,0}),
        string="Component 2"),
      Text(
        extent=[-94,64; -58,54],
        style(color=4, rgbcolor={0,255,255}),
        string="Component 3")));
end Experiment;
