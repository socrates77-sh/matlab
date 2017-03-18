a = sv(1, 120);
U = 220;
w = 2*pi*50;
R = 30;
L = 0.29;
M = 0.12;

Z = R+1i*w*(L+M*(a*a+a));

IA = U/Z;
P = U*conj(IA);

print_sv(IA, 'IA', 'A');
% print_sv(IB, 'IB', 'A');
% print_sv(IC, 'IC', 'A');

fprintf('P3=%f (W)\n', real(3*P));

