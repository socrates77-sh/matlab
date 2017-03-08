a = sv(1, 120);
UAB = sv(380, 30);
Z1 = 1+1i*2;
Z = 5+1i*6;

UA = UAB/sv(sqrt(3), 30);
IA = UA/(Z1+Z);
IB = IA*a*a;
IC = IA*a;

print_sv(IA, 'IA', 'A');
print_sv(IB, 'IB', 'A');
print_sv(IC, 'IC', 'A');

