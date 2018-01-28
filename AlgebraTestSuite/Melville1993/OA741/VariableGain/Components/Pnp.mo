within AlgebraTestSuite.Melville1993.OA741.VariableGain.Components;
model Pnp
  "Simple BJT according to Ebers-Moll using variable stimulus p1 homotopy, from MSL but steady-state only"

  Modelica.Electrical.Analog.Interfaces.Pin C "Collector" annotation (Placement(
        transformation(extent={{90,40},{110,60}}, rotation=0)));
  Modelica.Electrical.Analog.Interfaces.Pin B "Base" annotation (Placement(
        transformation(extent={{-90,-10},{-110,10}}, rotation=0)));
  Modelica.Electrical.Analog.Interfaces.Pin E "Emitter" annotation (Placement(
        transformation(extent={{90,-40},{110,-60}}, rotation=0)));

  // Parameters from Melville Test Case Intro, p. 2
  parameter Real af=0.98 "Forward current gain (PNP!)";
  parameter Real ar=0.5 "Reverse current gain";

  outer AlgebraTestSuite.P1Homotopy.Homotopy homotopy;
equation
  C.i = -CurrentFunctions.iCollectorPnp(
    B.v,
    C.v,
    E.v,
    homotopy.lambda*af,
    homotopy.lambda*ar,
    af,
    ar);
  E.i = -CurrentFunctions.iEmitterPnp(
    B.v,
    C.v,
    E.v,
    homotopy.lambda*af,
    homotopy.lambda*ar,
    af,
    ar);
  B.i = -CurrentFunctions.iBasePnp(
    B.v,
    C.v,
    E.v,
    homotopy.lambda*af,
    homotopy.lambda*ar,
    af,
    ar);

  annotation (Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics={
        Line(points={{-10,40},{-10,-40}}, color={0,0,255}),
        Line(points={{-10,0},{-90,0}}, color={0,0,255}),
        Line(points={{91,50},{30,50}}, color={0,0,255}),
        Line(points={{30,50},{-10,10}}, color={0,0,255}),
        Line(points={{-10,-10},{30,-50}}, color={0,0,255}),
        Line(points={{30,-50},{91,-50}}, color={0,0,255}),
        Polygon(
          points={{-10,-10},{5,-17},{-3,-25},{-10,-10}},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,255}),
        Text(
          extent={{-158,119},{142,79}},
          textString="%name",
          lineColor={0,0,255}),
        Text(
          extent={{-100,80},{-20,40}},
          lineColor={255,0,0},
          textString="VG")}), Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics={
        Line(points={{-10,40},{-10,-40}}, color={0,0,255}),
        Line(points={{-10,0},{-99,0}}, color={0,0,255}),
        Line(points={{100,50},{30,50}}, color={0,0,255}),
        Line(points={{30,50},{-10,10}}, color={0,0,255}),
        Line(points={{-10,-10},{30,-50}}, color={0,0,255}),
        Line(points={{30,-50},{99,-50}}, color={0,0,255}),
        Polygon(
          points={{-10,-10},{5,-17},{-3,-25},{-10,-10}},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,255})}));
end Pnp;
