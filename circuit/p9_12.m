Z = 1-0.5*1i;
Z1 = 1+1*1i;
Z2 = 3-1*1i;

Zi = Z+resp(Z1,Z2);
Yi = 1/Zi;

fprintf('Yi=');
disp(Yi);

U = 8;
I = U/Zi;
I1 = I*Z2/(Z1+Z2);
I2 = I*Z1/(Z1+Z2);

[ab, ang] = rsv(I);
fprintf('I=%f[%f deg] (A)\n', ab, ang);

[ab, ang] = rsv(I1);
fprintf('I1=%f[%f deg] (A)\n', ab, ang);

[ab, ang] = rsv(I2);
fprintf('I2=%f[%f deg] (A)\n', ab, ang);
