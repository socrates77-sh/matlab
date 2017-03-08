a = sv(1, 120);
UA = sv(220, 0);
Z1 = 3+1i*4;
Z = (19.2+1i*14.4)/3;

IA = UA/(Z1+Z);
IB = IA*a*a;
IC = IA*a;

UAN = IA*Z;
UAB = UAN*sv(sqrt(3), 30);
UBC = UAB*a*a;
UCA = UAB*a;

IAB = UAB/(3*Z);
IBC = UBC/(3*Z);
ICA = UCA/(3*Z);

print_sv(IA, 'IA', 'A');
print_sv(IB, 'IB', 'A');
print_sv(IC, 'IC', 'A');

print_sv(UAB, 'UAB', 'V');
print_sv(UBC, 'UBC', 'V');
print_sv(UCA, 'UCA', 'V');

print_sv(IAB, 'IAB', 'A');
print_sv(IBC, 'IBC', 'A');
print_sv(ICA, 'ICA', 'A');