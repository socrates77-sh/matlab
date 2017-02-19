U1 = 8;
R1 = 1;
ZL1 = 1i*2;
ZL2 = 1i*32;
ZM = 1i*8;
ZC = 32/1i;

ZX = [R1+ZL1, ZM; ZM, ZL2+ZC];
UX = [U1; 0];
IX = ZX\UX;

I1 = IX(1);
I2 = IX(2);
U2 = -I2*ZC;

fprintf('I1=%f\n', I1);
[absU2, angU2] = rsv(U2);
fprintf('U2=%f[%f deg] (V)\n', absU2, angU2);
