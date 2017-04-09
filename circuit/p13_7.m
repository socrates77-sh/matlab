syms s real;

U = 30;
R1 = 100;
R2 = 200;
C1 = 0.2e-6;
C2 = 0.1e-6;

C10 = 20;
C20 = 10;

Zs = [1/(s*C1)+R1 -1/(s*C1)-R1; -1/(s*C1)-R1 1/(s*C1)+1/(s*C2)+R1+R2];
Us = [(U-C10)/s C10/s-C20/s]';
Is = Zs\Us;

Is1 = Is(1);
it = ilaplace(Is1);
fprintf('i=%s (A)\n', char(vpa(it, 3)));

UC1s = (Is(1)-Is(2))/(s*C1)+C10/s;
uc1 = ilaplace(UC1s);
fprintf('uc1=%s (V)\n', char(vpa(uc1, 3)));

UC2s = Is(2)/(s*C2)+C20/s;
uc2 = ilaplace(UC2s);
fprintf('uc2=%s (V)\n', char(vpa(uc2, 3)));