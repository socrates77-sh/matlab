a = sv(1, 120);
Z = (4.5+1i*14)/3;
Z1 = (1.5+1i*2);
U = 220;

IA = abs(U/(Z+Z1));
IAB = IA/sqrt(3);
% IB = IA*a*a;
% IC = IA*a;

% print_sv(IA, 'IA', 'A');
% print_sv(IB, 'IB', 'A');
% print_sv(IC, 'IC', 'A');

fprintf('IA=%f (A)\n', IA);
fprintf('IAB=%f (A)\n', IAB);