syms t;

i1 = 2+5*cos(10*t+pi/6);
i2 = 10*exp(-5*t);

L1 = 6;
L2 = 3;
M = 4;

P1 = L1*i1+M*i2;
P2 = M*i1+L2*i2;

fprintf('P1=');
disp(P1);
fprintf('P2=');
disp(P2);

u11 = diff(P1);
u22 = diff(P2);

fprintf('u11=');
disp(u11);
fprintf('u22=');
disp(u22);

k=M/sqrt(L1*L2);
fprintf('k=%f\n', k);