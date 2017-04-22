syms C R s real;

Yx = [1/R+s*C -s*C -1/R; -s*C 1/R+2*s*C 0; -1/R 0 2/R+s*C]
Ix = [1 0 0]';
Ux = Yx\Ix;
Y11 = 1/Ux(1);
Y12 = -(Ux(2)*s*C+Ux(3)/R)/Ux(1);

Y = [Y11 Y12; Y12 Y11];
fprintf('Y=\n');
disp(Y)




