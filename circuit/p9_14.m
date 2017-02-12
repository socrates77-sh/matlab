abs_Z2 = 220/10;
ang_Z2 = -rad2deg(acos(1000/2200));
Z2 = sv(abs_Z2, ang_Z2);
[ab, ang] = rsv(Z2);
fprintf('Z2=%f[%f deg] (ohm)\n', ab, ang);

abs_Z = 220/12;
ang_Z = rad2deg(acos(1600/(220*12)));
Z = sv(abs_Z, ang_Z);
Z1 = Z - Z2;
[ab, ang] = rsv(Z1);
fprintf('Z1=%f[%f deg] (ohm)\n', ab, ang);

abs_Zb = 220/12;
ang_Zb = -rad2deg(acos(1600/(220*12)));
Zb = sv(abs_Zb, ang_Zb);
Z1b = Zb - Z2;
[ab, ang] = rsv(Z1b);
fprintf('Z1b=%f[%f deg] (ohm)\n', ab, ang);