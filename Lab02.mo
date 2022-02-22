//(1032192861  mod  70) + 1 = 22 вариант
model Lab02

  //константа Pi, необходимая для угловых вычислений
  import Modelica.Constants.{pi};
  
  type Speed = Real(unit="m/s");
  type Distance = Real(unit="m");
  type Angle = Real(unit="rad");
  
  parameter Distance k = 9.6 * (1000);
  parameter Distance x1 = k/5;
  parameter Distance x2 = k/3;
  parameter Speed v = 30 * (5/18);
  parameter Angle fi = 50 * (pi / 180);
  parameter Angle theta_start_1 = 0;
  parameter Angle theta_start_2 = - pi;
  
  Angle theta(start = theta_start_2);
  Distance r(start = x2);
  Distance x_k;
  Distance y_k;
  Distance x_l;
  Distance y_l;

equation

  der(r) = v;
  r * der(theta) = sqrt(15)*v;
  
  x_k = r*cos(theta);
  y_k = r*sin(theta);
  x_l = r*cos(fi);
  y_l = r*sin(fi);

end Lab02;
