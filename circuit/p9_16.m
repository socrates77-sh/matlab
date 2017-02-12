w = 100;
ZL = 1i*w;
R1 = 100;
R2 = 200;
C = 1/w^2;
ZC = 1/(1i*w*C);
US = sv(100*sqrt(2), 0);

I = US/(R1+ZL);
fprintf('I=%f (A)\n', abs(I));

