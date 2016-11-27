t = 0 : 0.01e-6 : 100e-6;
C = 1700e-6;
R = 6e-4;
L = 6e-9;
U0 = 15e3;

d = R/(2*L);
w = sqrt(1/(L*C)-(R/(2*L))^2);
b = atan(abs(w)/d);

i = (U0/(w*L))*exp(-d*t) .*sin(w*t);

plot(t,i);
grid on;

[imax, index] = max(i);
imax
tmax = 0.01e-6 * (index-1)
