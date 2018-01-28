within AlgebraTestSuite.Roychowdhury2006.InverterChains.Components.Functions;
function fakeDedendencyFcn
  input Real actualInput;
  input Real fakeInput;
  output Real outputVar;
algorithm
  outputVar := actualInput;
  annotation(Inline=false, LateInline=false, smoothOrder=2);
end fakeDedendencyFcn;
