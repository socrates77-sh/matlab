syms s;
R1 = 2;
R2 = 3;
L1 = 0.3;
L2 = 0.1;
Us = 10/s;

I = (Us+5*L1)/(R1+R2+s*L1+s*L2);
i = ilaplace(I);
fprintf('i(t)=%s (A)\n', char(i));

UL1 = I*s*L1-5*L1;
ul1 = ilaplace(UL1);
fprintf('ul1(t)=%s (V)\n', char(ul1));

UL2 = I*s*L2;
ul2 = ilaplace(UL2);
fprintf('ul2(t)=%s (V)\n', char(ul2));