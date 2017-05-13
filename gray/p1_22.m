VT = 26e-3;
ni = 1.5e16;
q = 1.6e-19;
epi = 1.04e-10;
eox = 3.9*8.854e-12;

ID = 10e-9;
VDS = 1;
n = 1.5;
Cg = 10e-15;

gm = ID/(n*VT);
fT = gm/(2*pi*Cg);

fprintf('gm=%f (uA/V)\n', gm*1e6);
fprintf('fT=%f (MHz)\n', fT*1e-6);