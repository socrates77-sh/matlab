us = 10;

syms il(t);
D2il = diff(il,2);
Dil = diff(il);
il_s = dsolve(il+Dil+D2il==us, il(0)==0, Dil(0)==us);
uc_s = us-diff(il_s);

fprintf('uc(t)=');
disp(vpa(uc_s, 5));

uc_s1 = diff(uc_s);
fprintf('uc1(t)=');
disp(vpa(uc_s1, 5));