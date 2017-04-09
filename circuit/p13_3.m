syms s;

Fs = 1/((s+1)*(s+2)^2);
ft = ilaplace(Fs);
fprintf('(1) f(t)=%s\n', char(ft));

Fs = (s+1)/(s^3+2*s^2+2*s);
ft = ilaplace(Fs);
fprintf('(2) f(t)=%s\n', char(ft));

Fs = (s^2+6*s+5)/(s*(s^2+4*s+5));
ft = ilaplace(Fs);
fprintf('(3) f(t)=%s\n', char(ft));

Fs = s/(s^2+1)^2;
ft = ilaplace(Fs);
fprintf('(4) f(t)=%s\n', char(ft));