syms s;
Z = [1+s+1/s -1/s; -1/s 1+1/s];
U = [1/s-1/s 1/s]'
I = Z\U;

it = ilaplace(I(1))
