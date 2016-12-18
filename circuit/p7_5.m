R_1 = 3000;
C = 1e-6;
L = 1;
U = 100;

syms uc(t);
D2uc = diff(uc,2);
Duc = diff(uc);
uc_s = dsolve(L*C*D2uc+R_1*C*Duc+uc==U, uc(0)==0, Duc(0)==0);
i_s = C*diff(uc_s);

disp('Part (1)')
fprintf('i(t)=');
disp(vpa(i_s, 5));
fprintf('uc(t)=');
disp(vpa(uc_s, 5));

R_1 = 2000;
uc_s = dsolve(L*C*D2uc+R_1*C*Duc+uc==U, uc(0)==0, Duc(0)==0);
i_s = C*diff(uc_s);

disp('Part (2)')
fprintf('i(t)=');
disp(vpa(i_s, 5));
fprintf('uc(t)=');
disp(vpa(uc_s, 5));

R_1 = 200;
uc_s = dsolve(L*C*D2uc+R_1*C*Duc+uc==U, uc(0)==0, Duc(0)==0);
i_s = C*diff(uc_s);

disp('Part (3)')
fprintf('i(t)=');
disp(vpa(i_s, 5));
fprintf('uc(t)=');
disp(vpa(uc_s, 5));
