syms t;
C = 1e-6;
R = 4e3;
L = 1;
U0 = 10;

p1 = -R/(2*L) + sqrt((R/(2*L))^2 - 1/(L*C));
p2 = -R/(2*L) - sqrt((R/(2*L))^2 - 1/(L*C));

uc = U0/(p2-p1) * (p2*exp(p1*t)-p1*exp(p2*t));
i = -U0/(L*(p2-p1)) * (exp(p1*t)-exp(p2*t));
ul = -U0/(p2-p1) * (p1*exp(p1*t)-p2*exp(p2*t));

figure(1);
title('ex7\_1');
% subplot(2,1,2);
fplot(uc);
grid on;
xlabel('t');
% legend('i');