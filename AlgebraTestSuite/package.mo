within ;
package AlgebraTestSuite "Nonlinear algebraic equation system benchmarks"
  import SI = Modelica.SIunits;









annotation (uses(Modelica(version="3.2.2"), UserInteraction(version="0.64")),
      Documentation(info="<html>
<p>This package contains example problems for robustness testing of nonlinear algebraic equation solvers. It contains the following types of examples:</p>
<ul>
<li>Plain nonlinear algebraic equation systems: These can be solved using the well-known algorithms such as Newton-Raphson, Trust Region. See for instance <a href=\"modelica://AlgebraTestSuite.AliasDifficult\">all examples within AliasDifficult</a>, <a href=\"modelica://AlgebraTestSuite.Baharev2008\">Baharev2008</a>, <a href=\"modelica://AlgebraTestSuite.Baharev2009a\">Baharev2009a</a>, <a href=\"modelica://AlgebraTestSuite.Baharev2009b\">Baharev2009b</a>, <a href=\"modelica://AlgebraTestSuite.Lee2001\">Lee2001</a>.</li>
<li>Nonlinear algebraic equation systems using probability-one homotopy maps: These are solved using continuation algorithms, and the construction of the homotopy maps use probability-one homotopy theory to guarantee convergence with probability one in sense of a Lebesgue measure. See for instance <a href=\"modelica://AlgebraTestSuite.Melville1993\">Melville1993</a>, <a href=\"modelica://AlgebraTestSuite.Roychowdhury2006\">Roychowdhury2006</a>.</li>
</ul>
<p>This Modelica package is free software and the use is completely at your own risk; it can be redistributed and/or modified under the terms of the <a href=\"modelica://AlgebraTestSuite.License\">3-Clause BSD License</a>.</p>
</html>"));
end AlgebraTestSuite;
