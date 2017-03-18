a = sv(1, 120);
U = 220;
Z = 27.5+1i*47.64;

Za = Z/3;
UA = U;
UB = UA*a*a;
UC = UA*a;

IA = U/Za;
IC = IA*a;

P1 = (UA-UB)*conj(IA);
fprintf('P1=%f (W)\n', real(P1));

P2 = (UC-UB)*conj(IC);
fprintf('P2=%f (W)\n', real(P2));

IA = (UA-UB)/Z;
IC = (UC-UB)/Z;

P1 = (UA-UB)*conj(IA);
fprintf('P1=%f (W)\n', real(P1));

P2 = (UC-UB)*conj(IC);
fprintf('P2=%f (W)\n', real(P2));