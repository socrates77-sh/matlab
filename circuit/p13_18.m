syms s t real;

Zx1 = [1/(0.25*s)+0.5 -0.5; -0.5 0.5+s];
Ux1 = [2/s 1]';
Ix1 = Zx1\Ux1;

U2 = -Ix1(1)/(s*0.25)+2/s;
u2t =  ilaplace(U2);
fprintf('u2(t)=%s (V)\n', char(vpa(rewrite(u2t, 'exp'), 3)));

U1 = Ix1(2)*s-1;
Ix2 = (8*U1-1/s)/(4+2/s);
U3 = Ix2*1/(0.5*s)+1/s;
u3t =  ilaplace(U3);
fprintf('u3(t)=%s (V)\n', char(vpa(rewrite(u3t, 'exp'), 3)));

