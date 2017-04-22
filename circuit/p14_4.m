syms s;

Zx = [1/s+1 -1 -1/s; -1 2+1/s -1/s; -1/s -1/s 1+2/s];
Ux = [1 0 0]';
Ix = Zx\Ux;

Y21 = Ix(2);

fprintf('Y21(s)=%s\n', char(factor(Y21)));
