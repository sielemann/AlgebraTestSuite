within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components;
model Inverter

  PMOS mp1  annotation (Placement(transformation(extent={{-10,20},{10,40}},
          rotation=0)));
  NMOS mn1  annotation (Placement(transformation(extent={{-10,-30},{10,-10}},
          rotation=0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin source "source node"
    annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin gate1 "gate node"
    annotation (Placement(transformation(extent={{-112,10},{-92,30}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin drain "drain node"
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin drainSource1
    "drain-to-source node"
    annotation (Placement(transformation(extent={{90,10},{110,30}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin gate2 "gate node"
    annotation (Placement(transformation(extent={{-110,-30},{-90,-10}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin drainSource2
    "drain-to-source node"
    annotation (Placement(transformation(extent={{90,-20},{110,0}})));
equation
  connect(mp1.B,mp1. D) annotation (Line(points={{10,30},{10,40},{0,40}},
        color={0,0,255}));
  connect(mn1.B,mn1. S) annotation (Line(points={{10,-20},{10,-30},{0,-30}},
        color={0,0,255}));
  connect(mn1.S, source) annotation (Line(
      points={{0,-30},{0,-100}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(mp1.D, drain) annotation (Line(
      points={{0,40},{0,100}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(mp1.G, gate1) annotation (Line(
      points={{-10,29.9},{-10,20},{-102,20}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(mn1.G, gate2) annotation (Line(
      points={{-10,-20.1},{-55,-20.1},{-55,-20},{-100,-20}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(mn1.D, drainSource2) annotation (Line(
      points={{0,-10},{100,-10}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(mp1.S, drainSource1) annotation (Line(
      points={{0,20},{100,20}},
      color={0,0,255},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}),
                      graphics), Icon(coordinateSystem(preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}), graphics={Text(
          extent={{-100,80},{0,60}},
          lineColor={255,0,0},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="ATANSH"), Rectangle(extent={{-100,100},{100,-100}},
            lineColor={0,0,255})}));
end Inverter;
