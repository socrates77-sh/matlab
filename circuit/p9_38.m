p = acos(0.5);
abs_Z = 220^2/60;
Z = abs_Z*exp(1i*p);
R = 220^2/100;
Z_all = resp(Z/50, R/50);
[abs, ang] = rsv(Z_all);
cos(deg2rad(ang))

