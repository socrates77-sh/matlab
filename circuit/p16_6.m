syms R1 R2 R3 r;

Zx = [R1+R3 -R3+r; -R3 R2+R3];
Ux = [1 0]';
Ix = Zx\Ux;
Y11 = Ix(1);
Y21 = -Ix(2);


Ux = [0 -1]';
Ix = Zx\Ux;
Y12 = Ix(1);
Y22 = -Ix(2);

Y = sym([Y11 Y12; Y21 Y22]);
Z = inv(Y);
fprintf('Z=\n');
disp(Z)
