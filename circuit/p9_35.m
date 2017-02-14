Z1 = 6+1i*12;
Z2 = 2*Z1;
Uoc = 25;
Zeq = resp(Z1, Z2);
Zc = -1i*16;
UC = Uoc*Zc/(Zc+Zeq);

fprintf('UC=%f (V)\n', abs(UC));


