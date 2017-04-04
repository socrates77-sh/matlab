syms s;
R1 = 1;
R2 = 1;
L1 = 0.1;
L2 = 0.1;
M = 0.05;
Us = 1/s;

Z = [R1+s*L1 -s*M; -s*M R2+s*L2];
U = [Us 0]';

I = Z\U;

i1 = ilaplace(I(1));
i2 = ilaplace(I(2));

fprintf('i1(t)=%s (A)\n', char(i1));
fprintf('i2(t)=%s (A)\n', char(i2));