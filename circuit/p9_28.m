IS = 1;
w = 1e4;
Z1 = 10+1i*50;
Z2 = -1i*50;
Z = resp(Z1, Z2);
U = IS*Z;
I1 = U/Z1;
I2 = U/Z2;
p1 = angle(U)-angle(I1);
p2 = angle(U)-angle(I2);
P1 = abs(U*I1)*cos(p1);
Q1 = abs(U*I1)*sin(p1);
P2 = abs(U*I2)*cos(p2);
Q2 = abs(U*I2)*sin(p2);

fprintf('S1=%f+j%f (VA)\n', P1, Q1);
fprintf('S2=%f+j%f (VA)\n', P2, Q2);