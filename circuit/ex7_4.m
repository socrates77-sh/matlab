% syms i,t;
t = 0:0.01e-3:5e-3;
C = 1e-6;
G = 2e-3;
L = 1;
Is = 1;

p = -1e3;

il = 1-(1+1e3*t).*exp(p*t);
uc = 1e6*t.*exp(p*t);
ic = (1-1e3*t).*exp(p*t);


figure(1);
title('ex7\_4');
subplot(2,1,2);
plot(t,uc,'b');
grid on;
xlabel('t');
legend('uc');

subplot(2,1,1);
hold on;
plot(t,il,'r');
plot(t,ic,'g');
grid on;
xlabel('t');
legend('il', 'uc');

