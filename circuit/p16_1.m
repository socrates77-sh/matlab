syms L C w;

Y11 = 1/(1i*w*L);
Y12 = -Y11;

Y = [Y11 Y12; Y12 Y11];
fprintf('(1) Y=\n');
disp(Y)

A = 1;
C1 = 1i*w*C;
B = 1i*w*L;
% D = (1i*w*C+1/(1i*w*L))/(1/(1i*w*L));
D = (1i*w*C+1/(1i*w*L))*(1i*w*L);
% D = w*C*w*L+1;
T = [A B; C1 simplify(D)];
fprintf('(2) T=\n');
disp(T)




