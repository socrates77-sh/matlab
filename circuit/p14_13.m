syms s;
C1 = 1.73;
C2 = 0.27;
C3 = C2;
L = 1;
R = 1;

Gx = [s*C1+s*C2+1/(s*L) -s*C2-1/(s*L); -s*C2-1/(s*L) s*C3+s*C2+1/(s*L)+1/R];
Ix = [1 0]';
Ux = Gx\Ix;
H1 = Ux(2);

H = (0.27*s^2+1)/((s+1)*(s^2+s+1));

fprintf('H(s)=%s\n', char(vpa(factor(H), 3)));


[N D] = numden(H);
N1 = sym2poly(N);
D1 = sym2poly(D);
Hb = tf(N1, D1);
bode(Hb);
grid on;

h = ilaplace(H);
fprintf('h(t)=%s (V)\n', char(vpa(simplify(h), 3)));

h1 = ilaplace(H/s);
fprintf('u(t)=%s (V)\n', char(vpa(simplify(h1), 3)));


