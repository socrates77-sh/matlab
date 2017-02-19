R1 = 100;
R2 = 100;
L1 = 3;
L2 = 10;
M = 5;
U = 220;
w = 100;

Z1 = R1+1i*w*(L1-M);
Z2 = R2+1i*w*(L2-M);

I = U/(Z1+Z2);

U1 = I*Z1;
U2 = I*Z2;

[absU1, angU1] = rsv(U1);
[absU2, angU2] = rsv(U2);
fprintf('U1=%f[%f deg] (V)\n', absU1, angU1);
fprintf('U2=%f[%f deg] (V)\n', absU2, angU2);

C = 1/(w^2*(L1+L2-2*M));
fprintf('C=%f (uF)\n', C*1e6);