model War
  
  parameter Real a1 = 0.45;
  parameter Real b1 = 0.046;
  parameter Real c1 = 0.47;
  parameter Real d1 = 0.048;
  Real x1(start = 7);
  Real y1(start = 12);
  Real xs;
  Real ys;
  
  equation
  
der(x1) = -a1*x1+b1*x1*y1;
der(y1) = c1*y1-d1*x1*y1;
xs = c1/d1;
ys = a1/b1;

end War;
