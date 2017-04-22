syms s t real;

H = laplace(exp(-t)+2*exp(-2*t));

fprintf('H(s)=%s\n', char(factor(H)));
