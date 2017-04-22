Yx = [2 -1; -1 3];
Ix = [1 0]';
Ux = Yx\Ix;
Y11 = 1/Ux(1);
Y12 = -(Ux(1)+Ux(2))/Ux(1);

Y = sym([Y11 Y12; Y12 Y11]);
fprintf('(1) Y=\n');
disp(Y)

Yx = [1.5 -1.5; -1.5 3];
Ix = [1 0]';
Ux = Yx\Ix;
Y11 = 1/Ux(1);
Y12 = (1.5*Ux(2)-Ux(1))/Ux(1);

Y = sym([Y11 Y12; Y12 Y11]);
Z = inv(Y);
fprintf('(2) Z=\n');
disp(Z)




