w = 1000;
US = sv(10,-45);
R1 = 1;
C1 = 1000e-6;
L1 = 0.4e-3;
R2 = 2;
Z1 = R1+1/(1i*w*C1);
ZL = 1i*w*L1;

Zm = [Z1+ZL, -ZL; -ZL, ZL-2];
UX = [US, 0]';

Im = Zm\UX;

Uoc = (-2-R2)*Im(2)

U1 = US*ZL/(ZL+Z1);
Isc = 0.5*U1

Zeq = Uoc/Isc


