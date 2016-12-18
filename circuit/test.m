G = 2e-3;
C = 1e-6;
L = 1;
Is = 1;

syms il(t);
D2il = diff(il, 2);
Dil = diff(il);
il_s = dsolve(L*C*D2il+G*L*Dil+il==Is, il(0)==0, Dil(0)==0)
uc = L*diff(il_s)
ic = C*diff(uc)