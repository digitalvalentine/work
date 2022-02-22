model War
  
  parameter Real a1 = 0.4;
  parameter Real b1 = 0.64;
  parameter Real c1 = 0.77;
  parameter Real h1 = 0.3;
  Real x1(start = 24000);
  Real y1(start = 54000);
  
  parameter Real a2 = 0.35;
  parameter Real b2 = 0.67;
  parameter Real c2 = 0.77;
  parameter Real h2 = 0.45;
  Real x2(start = 24000);
  Real y2(start = 54000);
  
  equation
  
der(x1) = -a1*x1-b1*y1+sin(time+5)+1;
der(y1) = -c1*x1-h1*y1+cos(time+5)+1;

der(x2) = -a2*x2-b2*y2+sin(2*time)+2;
der(y2) = -c2*x2*y2-h2*y2+cos(time)+1;
  

end War;
