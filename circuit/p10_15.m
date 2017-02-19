U = 500;
w = 1e4;
R1 = 50;
L1 = 0.07;
L2 = 0.025;
M = 0.025;
C = 1e-6;

ZL1 = 1i*w*L1;
ZL2 = 1i*w*L2;
ZM = 1i*w*M;
ZC = 1/(1i*w*C);

ZX = [R1+ZL1+ZC, -ZM-ZC; -ZM-ZC, ZL2+ZC];
UX = [U; 0];
IX = ZX\UX;

I1 = IX(1);
I2 = IX(2);

[absI1, angI1] = rsv(I1);
fprintf('I1=%f[%f deg] (A)\n', absI1, angI1);

[absI2, angI2] = rsv(I2);
fprintf('I2=%f[%f deg] (A)\n', absI2, angI2);
