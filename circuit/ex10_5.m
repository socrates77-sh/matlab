U = 100/sqrt(2);
L1 = 5;
L2 = 1.2;
M = 2;
RL = 3;
w = 10;

ZX = [1i*w*L1, 1i*w*M; 1i*w*M, 1i*w*L2+RL];
UX = [U; 0];
IX = ZX\UX;

I1 = IX(1);
I2 = IX(2);

[absI1, angI1] = rsv(I1);
[absI2, angI2] = rsv(I2);

fprintf('I1=%f[%f deg] (A)\n', absI1, angI1);
fprintf('I2=%f[%f deg] (A)\n', absI2, angI2);

