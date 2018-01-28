within AlgebraTestSuite.Melville1993.OA741.Components;
model NodalEquationWithHomotopy

  parameter Integer n=0 "Number of pins"
    annotation(Evaluate=true, Dialog(__Dymola_connectorSizing=true));
  Modelica.Electrical.Analog.Interfaces.Pin pin[n] "Pin array"
                                                     annotation (Placement(
        transformation(extent={{10,-10},{-10,10}},   rotation=0)));
  Real v(start = a);
  parameter Real Gleak = 1e-3;
  parameter Real a
    "Need to supply a random value between lower and upper source voltage!";

  outer AlgebraTestSuite.P1Homotopy.Homotopy homotopy;
equation
  for i in 1:n loop
    v = pin[i].v;
  end for;
  0 = -sum(pin[:].i) + (1.0-homotopy.lambda)*Gleak*(v-a);

  // lambda() has to be ramped while lambda(1) and lambda(2) are ramped
  // lambda(1) is ramped before lambda(2)
  // lambda(2) is ramped after lambda(1)

  annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
            -100},{100,100}}), graphics={Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid)}));
end NodalEquationWithHomotopy;
