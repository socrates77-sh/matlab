t0 = 1;

syms t w;
F = int(exp(-1i*w*t), t, -t0/2, t0/2);

ezplot(abs(F), [-8*pi/t0, 8*pi/t0]);
grid on;