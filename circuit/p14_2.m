syms s;

Zin1 = 1+resp(2*s, 4+1/(3*s));

fprintf('(a) Zin=%s\n', char(collect(Zin1)));

Gx = [2/s+s -2/s-3; -2/s 2/s+1+3];
Ix = [1 0]';
Ux = Gx\Ix;

Zin2 = Ux(1);

fprintf('(b) Zin=%s\n', char(collect(Zin2)));
