U = 115;
w = 314;
R1 = 20;
R2 = 0.08;
RL = 42;
L1 = 3.6;
L2 = 0.06;
M = 0.465;

ZL1 = 1i*w*L1;
ZL2 = 1i*w*L2;
ZM = 1i*w*M;


ZX = [R1+ZL1, ZM; ZM, R2+RL+ZL2];
UX = [U; 0];
IX = ZX\UX;

I1 = IX(1);
I2 = -IX(2);

[absI1, angI1] = rsv(I1);
fprintf('I1=%f[%f deg] (A)\n', absI1, angI1);

[absI2, angI2] = rsv(I2);
fprintf('I2=%f[%f deg] (A)\n', absI2, angI2);
