syms s t w p a real;

h1 = dirac(t)+3/5*exp(-t);
H1 = laplace(h1);
fprintf('(1) H(s)=%s\n', char(factor(H1)));

h2 = exp(-a*t)*sin(w*t+p);
H2 = laplace(h2);
fprintf('(2) H(s)=%s\n', char(simplify(H2)));

h3 = 3/5*exp(-t)-7/9*t*exp(-3*t)+3*t;
H3 = laplace(h3);
fprintf('(3) H(s)=%s\n', char(factor(H3)));
