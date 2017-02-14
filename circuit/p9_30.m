R = 2;
ZL = 1i*3;
ZC = 1/(1i*2);
UC = sv(10,45);
UR = UC;
IC = UC/ZC;
IR = UR/R;
I = IC+IR;
UL = I*ZL;
US = UL+UC;

[ab, ang] = rsv(US);
fprintf('US=%f[%f deg] (V)\n', ab, ang);

[ab, ang] = rsv(UR);
fprintf('UR=%f[%f deg] (V)\n', ab, ang);

[ab, ang] = rsv(UL);
fprintf('UL=%f[%f deg] (V)\n', ab, ang);

[ab, ang] = rsv(I);
fprintf('I=%f[%f deg] (A)\n', ab, ang);

[ab, ang] = rsv(IC);
fprintf('IC=%f[%f deg] (A)\n', ab, ang);

[ab, ang] = rsv(IR);
fprintf('IR=%f[%f deg] (A)\n', ab, ang);

p = angle(US)-angle(I);
P = abs(US*I)*cos(p);
Q = abs(US*I)*sin(p);

fprintf('S_US=%f+j%f (VA)\n', P, Q);
