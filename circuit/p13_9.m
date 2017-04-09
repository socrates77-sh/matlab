syms s t real;

U = 10;
R = 1;
C = 0.5;
L = 0.2;


il0 = 10;

Zs = [s*L+R -R; -R R+1/(s*C)];
Us = [U/s+L*il0, 0]';
Is = Zs\Us;

Is1 = Is(1);
i1 = ilaplace(Is1);
fprintf('i1=%s (A)\n', char(vpa(i1, 3)));

T = 0:0.01:5;
ix = double(subs(i1, t, T));
plot(T, ix);
grid on;

