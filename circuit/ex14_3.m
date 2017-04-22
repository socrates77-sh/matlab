syms s;

N = [2 -12 16];
D = [1 4 6 3];
H = poly2sym(N, s)/poly2sym(D,s);
p = roots(D);
z = roots(N);
p
z