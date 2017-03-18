a = sv(1, 120);
U = 220;
Z = 50+1i*50;
Z1 = 100+1i*100;

UA = U;
UB = UA*a*a;
UC = UA*a;

IA = UA/Z;
IB = IA*a*a;
IC = IA*a;

print_sv(IA, 'IA', 'A');
print_sv(IB, 'IB', 'A');
print_sv(IC, 'IC', 'A');