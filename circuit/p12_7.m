U0 = 60;
U1_1 = -100;
U1_5 = -20;
U2_3 = 50;
U3_1 = -30;
U3_3 = -20;
U4_1 = 80;
U4_5 = 10;
U5_1 = sv(-10, 90);

Uab = sqrt(U1_1^2+U1_5^2);
Uac = sqrt(U1_1^2+U2_3^2+U1_5^2);
Uad = sqrt(U0^2+U1_1^2+U2_3^2+U1_5^2);
Uae = sqrt(U0^2+(U1_1+U3_1)^2+(U2_3+U3_3)^2+U1_5^2);
Uaf = sqrt(U0^2+(U1_1+U3_1+U4_1)^2+(U2_3+U3_3)^2+(U1_5+U4_5)^2);

fprintf('Uab=%f (V)\n', Uab);
fprintf('Uac=%f (V)\n', Uac);
fprintf('Uad=%f (V)\n', Uad);
fprintf('Uae=%f (V)\n', Uae);
fprintf('Uaf=%f (V)\n', Uaf);
fprintf('\n');

IS_7 = 2;
U0_7 = IS_7*10;

Uac = sqrt(U1_1^2+U2_3^2+U1_5^2);

Uad_1 = abs(U5_1+U4_1+U3_1);
Uad_3 = U3_3;
Uad_5 = U4_5;
Uad_7 = U0_7;
Uad = sqrt(Uad_1^2+Uad_3^2+Uad_5^2+Uad_7^2);
Uae = sqrt((Uad_1-U3_1)^2+(Uad_3-U3_3)^2+Uad_5^2+Uad_7^2);
Uag = U0_7;

fprintf('Uac=%f (V)\n', Uac);
fprintf('Uad=%f (V)\n', Uad);
fprintf('Uae=%f (V)\n', Uae);
fprintf('Uag=%f (V)\n', Uag);