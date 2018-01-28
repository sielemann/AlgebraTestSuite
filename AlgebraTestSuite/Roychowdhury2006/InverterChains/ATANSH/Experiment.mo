within AlgebraTestSuite.Roychowdhury2006.InverterChains.ATANSH;
model Experiment
  "n inverters with MOSFET level 1, using private record as model card"
  parameter Boolean startAtSol = false;

  parameter Real xstar[:] = { 5.000000e+000, 0, 5.000000e+000, 0, 5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0,  5.000000e+000, 0}
    "Solution";

  Real x[:] = {inverter[3].mp1.S.v, inverter[2].mp1.S.v, inverter[1].mp1.S.v, inverter[50].mp1.S.v, inverter[49].mp1.S.v, inverter[48].mp1.S.v, inverter[47].mp1.S.v, inverter[46].mp1.S.v, inverter[45].mp1.S.v, inverter[44].mp1.S.v, inverter[43].mp1.S.v, inverter[42].mp1.S.v, inverter[41].mp1.S.v, inverter[40].mp1.S.v, inverter[39].mp1.S.v, inverter[38].mp1.S.v, inverter[37].mp1.S.v, inverter[36].mp1.S.v, inverter[35].mp1.S.v, inverter[34].mp1.S.v, inverter[33].mp1.S.v, inverter[32].mp1.S.v, inverter[31].mp1.S.v, inverter[30].mp1.S.v, inverter[29].mp1.S.v, inverter[28].mp1.S.v, inverter[27].mp1.S.v, inverter[26].mp1.S.v, inverter[25].mp1.S.v, inverter[24].mp1.S.v, inverter[23].mp1.S.v, inverter[22].mp1.S.v, inverter[21].mp1.S.v, inverter[20].mp1.S.v, inverter[19].mp1.S.v, inverter[18].mp1.S.v, inverter[17].mp1.S.v, inverter[16].mp1.S.v, inverter[15].mp1.S.v, inverter[14].mp1.S.v, inverter[13].mp1.S.v, inverter[12].mp1.S.v, inverter[11].mp1.S.v, inverter[10].mp1.S.v, inverter[9].mp1.S.v, inverter[8].mp1.S.v, inverter[7].mp1.S.v, inverter[6].mp1.S.v, inverter[5].mp1.S.v, inverter[4].mp1.S.v};
  parameter Integer n = 50 "Number of inverters in inverter chain";

  parameter Real inverter_1_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_2_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_3_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_4_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_5_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_6_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_7_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_8_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_9_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_10_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_11_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_12_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_13_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_14_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_15_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_16_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_17_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_18_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_19_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_20_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_21_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_22_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_23_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_24_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_25_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_26_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_27_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_28_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_29_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_30_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_31_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_32_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_33_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_34_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_35_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_36_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_37_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_38_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_39_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_40_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_41_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_42_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_43_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_44_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_45_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_46_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_47_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_48_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_49_mp1_S_v_start = if startAtSol then 5 else 0.1 annotation(Evaluate=false);
  parameter Real inverter_50_mp1_S_v_start = if startAtSol then 0 else 0.1 annotation(Evaluate=false);

  Melville1993.OA741.Components.VoltageNode ground(v=0)         annotation (Placement(transformation(extent={{-74,-80},
            {-54,-60}},        rotation=0)));

  Modelica.Electrical.Analog.Sources.ConstantVoltage vin(V=0)
          annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-90,-42})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage v(V=5)
                           annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={92,-48})));
  Components.Inverter inverter[
                    n](mp1(S(v(
                       start = {
    inverter_1_mp1_S_v_start,
    inverter_2_mp1_S_v_start,
    inverter_3_mp1_S_v_start,
    inverter_4_mp1_S_v_start,
    inverter_5_mp1_S_v_start,
    inverter_6_mp1_S_v_start,
    inverter_7_mp1_S_v_start,
    inverter_8_mp1_S_v_start,
    inverter_9_mp1_S_v_start,
    inverter_10_mp1_S_v_start,
    inverter_11_mp1_S_v_start,
    inverter_12_mp1_S_v_start,
    inverter_13_mp1_S_v_start,
    inverter_14_mp1_S_v_start,
    inverter_15_mp1_S_v_start,
    inverter_16_mp1_S_v_start,
    inverter_17_mp1_S_v_start,
    inverter_18_mp1_S_v_start,
    inverter_19_mp1_S_v_start,
    inverter_20_mp1_S_v_start,
    inverter_21_mp1_S_v_start,
    inverter_22_mp1_S_v_start,
    inverter_23_mp1_S_v_start,
    inverter_24_mp1_S_v_start,
    inverter_25_mp1_S_v_start,
    inverter_26_mp1_S_v_start,
    inverter_27_mp1_S_v_start,
    inverter_28_mp1_S_v_start,
    inverter_29_mp1_S_v_start,
    inverter_30_mp1_S_v_start,
    inverter_31_mp1_S_v_start,
    inverter_32_mp1_S_v_start,
    inverter_33_mp1_S_v_start,
    inverter_34_mp1_S_v_start,
    inverter_35_mp1_S_v_start,
    inverter_36_mp1_S_v_start,
    inverter_37_mp1_S_v_start,
    inverter_38_mp1_S_v_start,
    inverter_39_mp1_S_v_start,
    inverter_40_mp1_S_v_start,
    inverter_41_mp1_S_v_start,
    inverter_42_mp1_S_v_start,
    inverter_43_mp1_S_v_start,
    inverter_44_mp1_S_v_start,
    inverter_45_mp1_S_v_start,
    inverter_46_mp1_S_v_start,
    inverter_47_mp1_S_v_start,
    inverter_48_mp1_S_v_start,
    inverter_49_mp1_S_v_start,
    inverter_50_mp1_S_v_start}))))
    annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
  Components.FakeDependency fakeDependency
    annotation (Placement(transformation(extent={{-86,-6},{-74,6}})));
  Melville1993.OA741.Components.NodalEquationWithHomotopy enforceNodalEquations[
                                              n - 1](each n=4, a={
        inverter_1_mp1_S_v_start,inverter_2_mp1_S_v_start,
        inverter_3_mp1_S_v_start,inverter_4_mp1_S_v_start,
        inverter_5_mp1_S_v_start,inverter_6_mp1_S_v_start,
        inverter_7_mp1_S_v_start,inverter_8_mp1_S_v_start,
        inverter_9_mp1_S_v_start,inverter_10_mp1_S_v_start,
        inverter_11_mp1_S_v_start,inverter_12_mp1_S_v_start,
        inverter_13_mp1_S_v_start,inverter_14_mp1_S_v_start,
        inverter_15_mp1_S_v_start,inverter_16_mp1_S_v_start,
        inverter_17_mp1_S_v_start,inverter_18_mp1_S_v_start,
        inverter_19_mp1_S_v_start,inverter_20_mp1_S_v_start,
        inverter_21_mp1_S_v_start,inverter_22_mp1_S_v_start,
        inverter_23_mp1_S_v_start,inverter_24_mp1_S_v_start,
        inverter_25_mp1_S_v_start,inverter_26_mp1_S_v_start,
        inverter_27_mp1_S_v_start,inverter_28_mp1_S_v_start,
        inverter_29_mp1_S_v_start,inverter_30_mp1_S_v_start,
        inverter_31_mp1_S_v_start,inverter_32_mp1_S_v_start,
        inverter_33_mp1_S_v_start,inverter_34_mp1_S_v_start,
        inverter_35_mp1_S_v_start,inverter_36_mp1_S_v_start,
        inverter_37_mp1_S_v_start,inverter_38_mp1_S_v_start,
        inverter_39_mp1_S_v_start,inverter_40_mp1_S_v_start,
        inverter_41_mp1_S_v_start,inverter_42_mp1_S_v_start,
        inverter_43_mp1_S_v_start,inverter_44_mp1_S_v_start,
        inverter_45_mp1_S_v_start,inverter_46_mp1_S_v_start,
        inverter_47_mp1_S_v_start,inverter_48_mp1_S_v_start,
        inverter_49_mp1_S_v_start})
    annotation (Placement(transformation(extent={{-26,-10},{-6,10}})));
  Melville1993.OA741.Components.NodalEquationWithHomotopy enforceNodalEquationsN(
                                               n=3, a=
        inverter_50_mp1_S_v_start)
    annotation (Placement(transformation(extent={{18,-12},{38,8}})));
equation
  connect(vin.n, ground.p)    annotation (Line(
      points={{-90,-52},{-90,-60},{-64,-60}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(v.n, ground.p)       annotation (Line(
      points={{92,-58},{92,-60},{-64,-60}},
      color={0,0,0},
      smooth=Smooth.None));

  // Connect each inverter at source and drain
  for i in 1:n loop
    connect(inverter[i].source, ground.p)  annotation (Line(
      points={{-60,-10},{-60,-60},{-64,-60}},
      color={0,0,255},
      smooth=Smooth.None));
    connect(inverter[i].drain, v.p)  annotation (Line(
      points={{-60,10},{-60,52},{92,52},{92,-38}},
      color={0,0,255},
      smooth=Smooth.None));
  end for;

  // Connect each inverter to each other
  // i = 1:n-1
  for i in 1:n-1 loop
    connect(inverter[i].drainSource1, enforceNodalEquations[i].pin[1]);
    connect(inverter[i].drainSource2, enforceNodalEquations[i].pin[2]);
    connect(enforceNodalEquations[i].pin[3], inverter[i+1].gate1);
    connect(enforceNodalEquations[i].pin[4], inverter[i+1].gate2);
  end for;
  // i = n
  connect(enforceNodalEquationsN.pin[1], fakeDependency.fakeInNode) annotation (
     Line(
      points={{28,-2.66667},{28,32},{-80,32},{-80,6}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(enforceNodalEquationsN.pin[2], inverter[n].drainSource1);
  connect(enforceNodalEquationsN.pin[3], inverter[n].drainSource2);

  // Connect remaining fakeDependency pins
  connect(vin.p, fakeDependency.inNode) annotation (Line(
      points={{-90,-32},{-90,0},{-86,0}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(fakeDependency.outNode, inverter[1].gate1) annotation (Line(
      points={{-74,0},{-72,0},{-72,2},{-70.2,2}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(fakeDependency.outNode, inverter[1].gate2) annotation (Line(
      points={{-74,0},{-72,0},{-72,-2},{-70,-2}},
      color={0,0,255},
      smooth=Smooth.None));

  annotation (Diagram(
        coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        initialScale=0.1), graphics={
        Text(
          extent={{-100,94},{100,86}},
          lineColor={0,0,255},
          textString=
              "Introducing fake dependency to avoid sequential solution"),
        Line(
          points={{-46,0},{-20,0}},
          color={0,0,255},
          smooth=Smooth.None,
          pattern=LinePattern.Dash),
        Line(
          points={{-12,0},{0,0},{0,20},{-72,20},{-72,8}},
          color={0,0,255},
          pattern=LinePattern.Dash,
          smooth=Smooth.None),
        Line(
          points={{-46,-2},{24,-2}},
          color={0,0,255},
          smooth=Smooth.None,
          pattern=LinePattern.Dash),
        Text(
          extent={{-16,18},{0,14}},
          lineColor={0,0,255},
          pattern=LinePattern.Dash,
          textString="i=1:n-1"),
        Text(
          extent={{16,30},{28,26}},
          lineColor={0,0,255},
          pattern=LinePattern.Dash,
          textString="i=n")}),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        initialScale=0.1), graphics),
    experiment(StopTime=5),
    Documentation(info="<html>
<p>This circuit that contains four inverter was designed to show the functionality of the MOS transistor models. To see the behavior of the circuit the output voltages of each inverter should be displayed (mp1.NS.v, mp2.NS.v, mp3.NS.v, mp4.NS.v). The output voltages of the second an fourth inverter and the inputvoltage of the first inverter have the same potential. The output voltages of the first and third inverter have the opposite potential compared with inverter 2 and 4.</p>
<p>Simulate until t=5s. The outputvalues should be: mp1.NS.v, mp2.NS.v, mp3.NS.v, mp4.NS.v and vgate.p.v</p>
</html>",
      revisions="<html>
<ul>
<li><i>April 2009 </i>by Kristin Majetta initially implemented</li>
</ul>
</html>"));
end Experiment;
