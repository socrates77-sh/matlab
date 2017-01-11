w = 5000;
U = 100;
ZR = 15;
ZL = i*w*12e-3;
ZC = 1/(i*w*5e-6);
I = U/(ZR+ZL+ZC);

fprintf('I=%f[%f]\n', abs(I), rad2deg(angle(I)));