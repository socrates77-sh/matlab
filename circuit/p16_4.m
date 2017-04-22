Zx = [3 -1; -2-1 5];
Ux = [1 0]';
Ix = Zx\Ux;
Y11 = Ix(1);
Y21 = -Ix(2);

Zx = [3 -1; -2-1 5];
Ux = [0 -1]';
Ix = Zx\Ux;
Y12 = Ix(1);
Y22 = -Ix(2);

Y = sym([Y11 Y12; Y21 Y22]);
fprintf('(1) Y=\n');
disp(Y)

Y11 = 1+1/2;
Y21 = -(0.5+3*1.5);
Y12 = -0.5;
Y22 = 1.5-3*(-0.5);

Y = sym([Y11 Y12; Y21 Y22]);
fprintf('(2) Y=\n');
disp(Y)




