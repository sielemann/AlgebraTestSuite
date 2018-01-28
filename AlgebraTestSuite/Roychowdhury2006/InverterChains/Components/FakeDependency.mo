within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components;
model FakeDependency

  Modelica.Electrical.Analog.Interfaces.PositivePin fakeInNode
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin outNode
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin inNode
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));

  parameter Boolean introduceFakeDependency = true
    "Introduce dependency to avoid sequential solution";
equation
  inNode.i + outNode.i = 0;
  fakeInNode.i = 0;
  if introduceFakeDependency then
    outNode.v = Functions.fakeDedendencyFcn(inNode.v, fakeInNode.v);
  else
    outNode.v = inNode.v;
  end if;
  annotation (Diagram(graphics));
end FakeDependency;
