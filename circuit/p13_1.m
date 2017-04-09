syms a w phi t;

ft = 1-exp(-a*t);
Fs = laplace(ft);
fprintf('(1) F(s)=%s\n', char(factor(Fs)));

ft = sin(w*t+phi);
Fs = laplace(ft);
fprintf('(2) F(s)=%s\n', char(factor(Fs)));

ft = exp(-a*t)*(1-a*t);
Fs = laplace(ft);
fprintf('(3) F(s)=%s\n', char(factor(Fs)));

ft = 1/a*(1-exp(-a*t));
Fs = laplace(ft);
fprintf('(4) F(s)=%s\n', char(factor(Fs)));

ft = t^2;
Fs = laplace(ft);
fprintf('(5) F(s)=%s\n', char(factor(Fs)));

ft = t+2+3*dirac(t);
Fs = laplace(ft);
fprintf('(6) F(s)=%s\n', char(factor(Fs)));

ft = t*cos(a*t);
Fs = laplace(ft);
fprintf('(7) F(s)=%s\n', char(factor(Fs)));

ft = exp(-a*t)+a*t-1;
Fs = laplace(ft);
fprintf('(8) F(s)=%s\n', char(factor(Fs)));
