R = 3;
Usm = [141.4, 47.13, 28.28, 20.2, 15.71];

P_all = 0;
for k = 1:2:9
    Z = R-1i*9.45/k;
    Im = Usm((k+1)/2)/Z;
    [absI, angI] = rsv(Im);
    P = 0.5*absI^2*R;
    P_all = P+P_all;
    fprintf('k=%d\n', k);
    print_sv(Im, 'Im', 'A');
    fprintf('P=%f (W)\n', P);
end

 fprintf('Pall=%f (W)\n', P_all);