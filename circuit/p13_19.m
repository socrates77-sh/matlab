syms s t real;

Z = resp(1, 1/(0.5*s), s);
I = 1+1-1/s;
Ux = I*Z;
IC = Ux*s*0.5;


uct =  ilaplace(UC);
fprintf('uc(t)=%s (V)\n', char(vpa(simplify(uct), 3)));

