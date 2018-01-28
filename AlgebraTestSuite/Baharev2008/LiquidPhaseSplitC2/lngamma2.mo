within AlgebraTestSuite.Baharev2008.LiquidPhaseSplitC2;
function lngamma2
  input Real x1;
  input Real x2;
  input Real T;
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
  lngamma :=x1^2*(tau12*G12^2/(x2 + x1*G12)^2 + tau21*G21/(x1 + x2*G21)^2);
  annotation(smoothOrder=2, Inline=true);
end lngamma2;
