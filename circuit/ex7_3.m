% t = 0 : 0.01e-6 : 100e-6;
C = 3800e-6;
U0 = 14.14e3;
f = 50;

syms L;
r = solve(2*pi*f==1/sqrt(L*C),L);
L1 = eval(r)
% L1 = vpa(r,3)

imax = U0/sqrt(L1/C)