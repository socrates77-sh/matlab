R = 1e3;
C = 2e-6;
L = 2.5;
U0 = 10;

syms uc(t);
D2uc = diff(uc,2);
Duc = diff(uc);
uc_s = dsolve(L*C*D2uc+R*C*Duc+uc==0, uc(0)==U0, Duc(0)==0);
i_s = -C*diff(uc_s);
ul_s = L*diff(i_s);

fprintf('i(t)=');
disp(vpa(i_s, 5));
fprintf('uc(t)=');
disp(vpa(uc_s, 5));
fprintf('ul(t)=');
disp(vpa(ul_s, 5));

tmax = solve(diff(i_s));
imax = subs(i_s, t, tmax);
fprintf('imax=');
disp(vpa(imax,3));

