syms s ux u2 u3;

S = solve(ux-1+ux/(1+1/s)+(ux-u3)*s==0, u3==2*u2, u2*s==ux-u2);
H = S.u3;
fprintf('H(s)=%s\n', char(vpa(factor(H), 3)));

[N, D] = numden(H);
N1 = sym2poly(N);
D1 = sym2poly(D);
Hb = tf(N1, D1);
bode(Hb);
grid on;
 
h = ilaplace(H);
fprintf('h(t)=%s (V)\n', char(vpa(simplify(h), 3)));



