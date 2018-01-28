within AlgebraTestSuite.Melville1993.OA741.Utilities;
function diodeCurrent
  "Diode current as function of potential difference; without limiting to be at least C^2 continuous"
  input Real dx "Voltage across diode";
  output Real i "Diode current";
  // Parameters from Melville Test Case Intro, p. 2
protected
  parameter SI.Current is=1e-16
    "Reverse saturation current aka transport saturation current";
  parameter SI.Voltage vt= 0.025
    "Voltage equivalent of temperature assuming 300 Kelvin";
  parameter SI.Voltage dxMax = 0.95;
  // Quadratic extension polynomial for the given parameter values
  parameter Real u = 2548.47;
  parameter Real v = -4714.68;
  parameter Real w = 2182.13;
algorithm
  i := if dx<dxMax then is*(exp(dx/vt) - 1) else u*dx*dx + v*dx + w;
end diodeCurrent;
