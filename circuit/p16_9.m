syms U1 U2 I1 I2 Us
S = solve(U1==40*I1+0.4*U2, I2==10*I1+0.1*U2, U2==-10*I2, U1==Us-5*I1);

TF = S.U2/S.Us;

fprintf('U2(s)/Us(s)=%s\n', char(TF));
