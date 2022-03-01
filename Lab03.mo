model Lab03

  Real x1(start = 0.8);
  Real y1(start = -1);
  Real x2(start = 0.8);
  Real y2(start = -1);
  Real x3(start = 0.8);
  Real y3(start = -1);
  
equation
  
  y1 = der(x1);
  der(y1) + 10*x1 = 0;
  
  y2 = der(x2);
  der(y2) + 1.5*y2 + 3*x2 = 0;
  
  y3 = der(x3);
  der(y3) + 0.6*y3 + x3 = cos(1.5*time);

end Lab03;
