uc = 12/2;

il = 12/(3+3);

ir = (12-6)/6;
ic = ir-il;
duc = ic/(1/24);

ul = uc-3*il;
dil = ul/0.1;

syms x
irc = solve(6*x+duc);

fprintf('uc=%f\n', uc);
fprintf('il=%f\n', il);
fprintf('duc=%f\n', duc);
fprintf('dil=%f\n', dil);
fprintf('irc=%f\n', eval(irc));