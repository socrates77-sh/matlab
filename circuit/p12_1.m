T = 2*pi;
w = 2*pi/T;
Em = 3;
a = 1;
syms t;

f1 = Em/a*t*(heaviside(t+a)-heaviside(t-a));
f2 = (Em/(a-pi)*(t-pi))*(heaviside(t-a)-heaviside(t-pi));
f3 = (Em/(a-pi)*(t+pi))*(heaviside(t+pi)-heaviside(t+a));
f = f1+f2+f3;

a0 = int(f, -T/2, T/2);
a0

% ezplot(f, [-pi, pi]);
% grid on;