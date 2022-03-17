model Illness
  
  parameter Real a = 0.05;
  parameter Real b = 0.01;
  parameter Real N = 10800;
  
  parameter Real I0 = 208;
  parameter Real R0 = 41; 
  parameter Real S0 = N - I0 - R0;

  Real S1 (start = N - I0 - R0);
  Real I1 (start = I0);
  Real R1 (start = R0);
  
  Real S2 (start = N - I0 - R0);
  Real I2 (start = I0);
  Real R2 (start = R0);
    
  equation
  
der(S1) = 0;
der(I1) = -b*I1;
der(R1) = b*I1;

der(S2) = -a*S2;
der(I2) = a*S2 - b*I2;
der(R2) = b*I2;

end Illness;
