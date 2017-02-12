V = 100;
V1 = 171;
V2 = 240;
a1 = acos((V2^2+V1^2-V^2)/(2*V2*V1));
a = -(pi/2 - a1);
k = V2/60;
Z1 = sv(V1, rad2deg(a))/k;

fprintf('Z1=');
disp(Z1);


