syms s;
R1 = 5;
R2 = 5;
L = 1;

Y = 1/R1+1/R2+1/(s*L);
I = 2/(s+2)/R1+5/s/R2-1/s;
UL = I/Y;
ul = ilaplace(UL);
fprintf('ul(t)=%s (V)\n', char(ul));
