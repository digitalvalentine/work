model Advertisement

  parameter Real N = 963;
  
  Real n1(start = 11);
  Real n2(start = 11);
  Real n3(start = 11);
  
equation

  der(n1) = (0.68 + 0.00018*n1)*(N-n1);
  der(n2) = (0.00001 + 0.35*n2)*(N-n2);
  der(n3) = (0.51*sin(5*time)+0.31*cos(3*time)*n3)*(N-n3);
  
end Advertisement;
