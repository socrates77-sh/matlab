syms s t real;
L = 0.2;
C = 0.1;
R1 = 6;
R2 = 4;

Us = laplace(7*exp(-2*t));

Zx = [s*L+R1 -R1; -R1 1/(s*C)+R2+R1];
Ux = [Us 0]';
Ix = Zx\Ux;

I2 = Ix(2);

i2 = ilaplace(I2);
fprintf('i2(t)=%s (A)\n', char(vpa(i2, 3)));

H = I2/Us;
fprintf('H(s)=%s\n', char(factor(H)));

h = ilaplace(H);
fprintf('h(t)=%s (A)\n', char(h));
