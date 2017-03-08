a = sv(1, 120);
R = 1;
ZC = -1i;
UA = 1;

YC = 1/ZC;
G = 1/R;
UNN = (YC*UA+G*(UA*a*a+UA*a))/(YC+2*G);

UB = UA*a*a;
UBN = UB-UNN;

UC = UA*a;
UCN = UC-UNN;

print_sv(UNN, 'UNN', 'V');
print_sv(UBN, 'UBN', 'V');
print_sv(UCN, 'UCN', 'V');