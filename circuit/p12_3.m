A = [1 1; 100 900];
Y = [64; 10000];
X = A\Y;

I1 = sqrt(X(1));
I3 = sqrt(X(2));

U1 = 10*I1;
U3 = 30*I3;

fprintf('U1=%f (V)\n', U1);
fprintf('U3=%f (V)\n', U3);
