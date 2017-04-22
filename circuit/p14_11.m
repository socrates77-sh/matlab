syms s w;

Zx = [1+1/s -1/s; -1/s 1+2/s];
Ux = [1 0]';
Ix = Zx\Ux;
H = Ix(2)/s;

fprintf('H(s)=%s\n', char(factor(H)));

[N D] = numden(H);
N1 = sym2poly(N);
D1 = sym2poly(D);
Hb = tf(N1, D1);
bode(Hb);
grid on;

