syms s t real;

U = 100/s;
Z = 10+resp(10+s, 10+2*s);
Is = U/Z;
it = ilaplace(Is);

fprintf('i(t)=%s (A)\n ', char(vpa(rewrite(it, 'exp'), 3)));

T = 0:0.01:1;
ix = double(subs(it, t, T));
plot(T, ix);
grid on;

