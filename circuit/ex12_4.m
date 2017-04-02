w = 1;

syms t;
K = [];
CK = [];

for k = -9:1:9
    ck = (int(exp(-1i*k*w*t), 0, pi) - int(exp(-1i*k*w*t), pi, 2*pi))/(2*pi);
    %ck_abs = vpa(abs(ck), 3);
    ck_abs = double(abs(ck));
    fprintf('k=%d, ck_abs=%f\n', k, ck_abs);
    K = [K, k];
    CK = [CK, ck_abs];
end

stem(K, CK);
grid on;