il0 = 2;
uc0 = 1;
C = 0.5;
L = 1;
G = 1.5;

syms il(t);
D2il = diff(il,2);
Dil = diff(il);
il_s = dsolve(G*L*Dil+il+C*L*D2il==0, il(0)==il0, L*Dil(0)==uc0);

fprintf('il(t)=');
disp(vpa(il_s, 5));