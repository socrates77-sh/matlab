uc0 = 50/2;
il0 = 50/10;
C = 100e-6;

syms uc(t);
D2uc = diff(uc,2);
Duc = diff(uc);
uc_s = dsolve(uc+25*C*Duc+0.5*C*D2uc==0, uc(0)==uc0, Duc(0)==-il0/C);

fprintf('uc(t)=');
disp(vpa(uc_s, 5));