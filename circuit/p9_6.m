I2 = sv(10, 90);
r = 1;
xc = -1i;
I = I2 + xc*I2/r;
[ab, ang] = rsv(I);
fprintf('I=%f[%f deg]\n', ab, ang);

