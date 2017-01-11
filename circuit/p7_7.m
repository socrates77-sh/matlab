uc0 = 50/2;
il0 = 50/10;
C = 100e-6;

syms uc(t);
D2uc = diff(uc,2);
Duc = diff(uc);
uc_s = dsolve(uc+25*C*Duc+0.5*C*D2uc==0, uc(0)==uc0, Duc(0)==-il0/C);

fprintf('uc(t)=');
disp(vpa(uc_s, 5));

t1 = 0:0.001:0.2;
uc_p = subs(uc_s, t, t1);

figure(1);
% subplot(2,1,2);
plot(t1, uc_p, 'b');
xlabel('t/s');
ylabel('u/V');
legend('uc');
grid on;