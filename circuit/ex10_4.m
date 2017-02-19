U = 50;
R1 = 3;
R2 = 5;
ZL1 = 1i*7.5;
ZL2 = 1i*12.5;
ZM = 1i*8;

ZX = [R1+ZL1, ZM; ZM, R2+ZL2];
UX = [U; U];
IX = ZX\UX;

I1 = IX(1);
I2 = IX(2);

S1 = U*conj(I1);
S2 = U*conj(I2);

fprintf('S1=%f+j%f (VA)\n', real(S1), imag(S1));
fprintf('S2=%f+j%f (VA)\n', real(S2), imag(S2));
