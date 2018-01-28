within AlgebraTestSuite.P1Homotopy;
model Homotopy "Drag this utility into the diagram canvas"
  Real lambda(start=1) "Lambda of probability-one homotopy";
  Real lambda1 = noEvent(min(lambda/0.5, 1)) "First phase lambda";
  Real lambda2 = noEvent(max((lambda-0.5)/0.5, 0)) "Second phase lambda";
equation
  // Modelica language:
  //  - homotopy(actual=actual, simplified=simplified) = actual*lambda + simplified*(1-lambda) = actual*lambda() + simplified*(1-lambda())
  //  - Requires the following to access lambda directly: homotopy(actual=1, simplified=0) = 1*lambda + 0*(1-lambda) = lambda
  // To test in Dymola
  //  - Advanced.OnlyUseHomotopyMethod=true
  //  - Enable Setup -> Debug -> Nonlinear solver diagnostics -> Nonlinear solution to see solutions for intermediate lambda steps
  lambda = homotopy(1, 0);


  annotation(defaultComponentName="homotopy",
    defaultComponentPrefixes="inner",
    missingInnerMessage="No \"homotopy\" component is defined. A default homotopy
component will be used. If this is not desired,
drag AlgebraTestSuite.P1Homotopy.Homotopy into the top level of your model.");
end Homotopy;
