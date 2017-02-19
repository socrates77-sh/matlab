U = 50;
R1 = 3;
R2 = 5;
ZL1 = 1i*7.5;
ZL2 = 1i*12.5;
ZM = 1i*8;

k = ZM/sqrt(ZL1*ZL2);
fprintf('k=%f\n', k);

Z1 = R1+ZL1-ZM;
Z2 = R2+ZL2-ZM;
Z = Z1+Z2;

I = U/Z;

S1 = I*Z1*conj(I);
S2 = I*Z2*conj(I);

fprintf('S1=%f+j%f (VA)\n', real(S1), imag(S1));
fprintf('S2=%f+j%f (VA)\n', real(S2), imag(S2));
