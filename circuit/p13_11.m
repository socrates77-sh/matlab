syms s t real;

is = 2*exp(-t);
Is = laplace(is);
Z1 = resp(1, 2*s+2);
Z2 = resp(2, 1/s);
I2 = Is*Z1/(Z1+1/s+Z2);
U2 = I2*Z2;

fprintf('Us=%s\n', char(simplify(U2)));

