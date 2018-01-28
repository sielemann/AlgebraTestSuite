within AlgebraTestSuite.Melville1993.OA741.VariableStimulus.Components;
model Npn
  "Simple BJT according to Ebers-Moll using variable stimulus p1 homotopy, from MSL but steady-state only"

  Modelica.Electrical.Analog.Interfaces.Pin C "Collector" annotation (Placement(
        transformation(extent={{90,40},{110,60}}, rotation=0)));
  Modelica.Electrical.Analog.Interfaces.Pin B "Base" annotation (Placement(
        transformation(extent={{-90,-10},{-110,10}}, rotation=0)));
  Modelica.Electrical.Analog.Interfaces.Pin E "Emitter" annotation (Placement(
        transformation(extent={{90,-40},{110,-60}}, rotation=0)));

  // Parameters from Melville Test Case Intro, p. 2
  parameter Real af=0.995 "Forward current gain (NPN!)";
  parameter Real ar=0.5 "Reverse current gain";

  outer AlgebraTestSuite.P1Homotopy.Homotopy homotopy;
equation
  C.i = CurrentFunctions.iCollectorNpn(
    homotopy.lambda*B.v,
    homotopy.lambda*C.v,
    homotopy.lambda*E.v,
    af,
    ar);
  E.i = CurrentFunctions.iEmitterNpn(
    homotopy.lambda*B.v,
    homotopy.lambda*C.v,
    homotopy.lambda*E.v,
    af,
    ar);
  B.i = CurrentFunctions.iBaseNpn(
    homotopy.lambda*B.v,
    homotopy.lambda*C.v,
    homotopy.lambda*E.v,
    af,
    ar);

  annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
            {100,100}}), graphics={
        Line(points={{-10,40},{-10,-40}}, color={0,0,255}),
        Line(points={{-10,0},{-90,0}}, color={0,0,255}),
        Line(points={{91,50},{30,50}}, color={0,0,255}),
        Line(points={{30,50},{-10,10}}, color={0,0,255}),
        Line(points={{-10,-10},{30,-50}}, color={0,0,255}),
        Line(points={{30,-50},{91,-50}}, color={0,0,255}),
        Polygon(
          points={{30,-50},{24,-36},{16,-44},{30,-50}},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,255}),
        Text(
          extent={{-152,117},{148,77}},
          textString="%name",
          lineColor={0,0,255}),
        Text(
          extent={{-100,80},{-20,40}},
          lineColor={255,0,0},
          textString="VS")}), Diagram(coordinateSystem(preserveAspectRatio=
            false, extent={{-100,-100},{100,100}}), graphics));
end Npn;
