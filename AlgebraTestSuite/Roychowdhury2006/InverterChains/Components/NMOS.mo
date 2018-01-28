within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components;
model NMOS "Metal-Oxide Semiconductor Field-Effect Transistor, n-channel"

  Modelica.Electrical.Analog.Interfaces.PositivePin G "gate node" annotation (Placement(transformation(
            extent={{-110,-12},{-90,10}}, rotation=0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin D "drain node" annotation (Placement(transformation(
            extent={{-10,90},{10,110}}, rotation=0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin S "source node" annotation (Placement(
          transformation(extent={{-10,-110},{10,-90}}, rotation=0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin B "bulk node" annotation (Placement(transformation(
            extent={{90,-10},{110,10}}, rotation=0)));

  outer AlgebraTestSuite.P1Homotopy.Homotopy homotopy;
equation
  // Drain-source current according to ATANSH
  D.i = Functions.idsNchannel(G.v-B.v, D.v-B.v, S.v-B.v, homotopy.lambda1, homotopy.lambda2);
  S.i = -D.i;

  // Gate, source
  G.i = 0;
  B.i = 0;
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
            -100},{100,100}}),
                           graphics),
      Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},{
            100,100}}), graphics={
        Line(points={{0,92},{0,40},{-12,40},{-12,-40},{0,-40},{0,-94}}, color=
             {0,0,255}),
        Line(points={{-92,0},{-20,0}}, color={0,0,255}),
        Line(points={{-12,0},{94,0}}, color={0,0,255}),
        Line(points={{-20,40},{-20,-40}}, color={0,0,255}),
        Text(
          extent={{8,-34},{92,-86}},
          lineColor={0,0,255},
          textString="%name"),
        Polygon(
          points={{-10,4},{-10,-4},{10,0},{-10,4}},
          lineColor={0,0,255},
          smooth=Smooth.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          origin={50,0},
          rotation=180),
        Text(
          extent={{-100,80},{0,60}},
          lineColor={255,0,0},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="ATANSH")}),
      DymolaStoredErrors);
end NMOS;
