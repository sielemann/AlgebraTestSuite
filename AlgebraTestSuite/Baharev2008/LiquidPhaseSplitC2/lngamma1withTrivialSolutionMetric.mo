within AlgebraTestSuite.Baharev2008.LiquidPhaseSplitC2;
function lngamma1withTrivialSolutionMetric
  input Real x1;
  input Real x2;
  input Real T;
  input Real metric;
  output Real lngamma;
protected
  Real B12=593.739;
  Real B21=668.941;
  Real alpha12=0.3995;
  Real alpha21=0.3995;
  Real tau12=B12/T;
  Real tau21=B21/T;
  Real G12=exp(-alpha12*tau12);
  Real G21=exp(-alpha21*tau21);
algorithm
  lngamma :=x2^2*(tau21*G21^2/(x1 + x2*G21)^2 + tau12*G12/(x2 + x1*G12)^2);
  if (metric < 1e-4) then
    Modelica.Utilities.Streams.print("Approaching unwanted trivial solution");
  end if;
  annotation(smoothOrder=2, Inline=true);
end lngamma1withTrivialSolutionMetric;
