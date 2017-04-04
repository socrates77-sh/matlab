syms s C R;
Z = resp(1/(s*C), R);

IS = 1/s;
U = IS*Z;
ut = ilaplace(U);
fprintf('u(t)=%s (V)\n', char(ut));

IS = 1;
U = IS*Z;
ut = ilaplace(U);
fprintf('u(t)=%s (V)\n', char(ut));