R1 = 1;
R2 = 1;
ZL1 = 1i*3;
ZL2 = 1i*2;
ZM = 1i*2;
U = 100;

Z1 = R1+ZL1+M;
Z2 = R2+ZL2+M;

I = U/(Z1+Z2);
[absI, angI] = rsv(I);
fprintf('I=%f[%f deg] (A)\n', absI, angI);

Z1_1 = R1+ZL1;
I_1 = U/Z1_1;
[absI_1, angI_1] = rsv(I_1);
fprintf('I_1=%f[%f deg] (A)\n', absI_1, angI_1);
