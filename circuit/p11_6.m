a = sv(1, 120);
U = 220;
Z = 30+1i*20;

IA = U/Z;
print_sv(IA, 'IA', 'A');

P = U*conj(IA);
fprintf('P3=%f (W)\n', real(3*P));

UA = U;
UB = UA*a*a;
UC = UA*a;

UBN = UB-UA;
UCN = UC-UA;
IB = UBN/Z;
IC = UCN/Z;
IA = -(IB+IC);
print_sv(IA, 'IA', 'A');

PB = UBN*conj(IB);
PC = UCN*conj(IC);
fprintf('P3=%f (W)\n', real(PB+PC));

IB = (UB-UC)/(2*Z);
PBC = (UB-UC)*conj(IB);
fprintf('P3=%f (W)\n', real(PBC));
