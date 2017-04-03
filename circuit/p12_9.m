syms w L C;
Z1 = resp(1i*w*L, 1/(1i*w));
Z2 = 1i*w+1/(1i*w*C);
X = Z2/(Z1+Z2)
