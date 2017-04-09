syms s real;

U = 50;
R = 50;
L = 4/3;
C = 100e-6;

Zs = [R+s*L -s*L; -s*L s*L+1/(s*C)];
Us = [U/s 0]';
Is = Zs\Us;

ILs = Is(1)-Is(2);
ilt = ilaplace(ILs);

fprintf('il=%s (A)\n', char(ilt));
T = 0:0.001:0.2;
ix = double(subs(ilt, t, T));
plot(T, ix);
grid on;
Is