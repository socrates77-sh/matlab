syms s r real;

Us = 5/s;
Z1 = 1+resp(s, 1);
Z2 = 1+1/s;
R = 2;

Zx = [Z1+Z2 -Z2; -Z2-r Z2+R];
Ux = [Us 0]';
Ix = Zx\Ux;

U1s = (Ix(1)-Ix(2))*Z2;

U1s_1 = subs(U1s, r, -3);
U1s_2 = subs(U1s, r, 3);

fprintf('(1) U1s=%s\n', char(simplify(U1s_1)));
fprintf('(2) U1s=%s\n', char(simplify(U1s_2)));



