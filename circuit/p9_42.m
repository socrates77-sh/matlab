C = 8e-6;
w = 2500;
R = 10^2/100;
L = 1/(w^2*C);
Q = sqrt(L/C)/R;

fprintf('L=%f (H)\n', L);
fprintf('Q=%f\n', Q);
