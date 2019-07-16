% Axis1_Act_Position = Axis1_Act_Position/8388608*2*pi;
% Axis1_Act_Velocity = Axis1_Act_Velocity/8388608*2*pi;
% Axis1_Act_Torque = Axis1_Act_Torque/1000*2.39/(1.66*10^-4);

z1 = Axis1_Act_Position(1);
z1_old = Axis1_Act_Position(1);
z2 = 0;
z2_old = 0;
z3 = 0;
z3_old = 0;
h0 = 0.00025;
%BETA01 = 8000;BETA02 =410000000;BETA03 = 3000000000000;
%BETA01 = 7000;BETA02 =350000000;BETA03 = 1100000000000;
%BETA01 = 6000;BETA02=425000000;BETA03 = 1500000000000;
%BETA01 = 8000;BETA02=450000;BETA03 = 60000000;
%BETA01 = 8000;BETA02=210000;BETA03 = 10500000;  %空载下ESO增益
BETA01 = 8000;BETA02=200000;BETA03 = 10500000;   %二倍惯量比下ESO增益
for i = 1:length(Axis1_Act_Position)
    e = z1_old - Axis1_Act_Position(i);
    fe = fal(e,0.5,h0);
    fe1 = fal(e,0.25,h0);
    z1 = z1_old + h0*(z2-BETA01*e);
    z2 = z2_old + h0*(z3-BETA02*fe);
    z3 = z3_old + h0*(-BETA03*fe1);
    c1(i) = z1;
    c2(i) = z2;
    c3(i) = z3;
    %数据更新
    z1_old = z1;
    z2_old = z2;
    z3_old = z3;
end
%%
%绘制图形
figure(1)
title('Position');
hold on
plot(c1,'b');
plot(Axis1_Act_Position,'r');

figure(2)
title('Velocity');
hold on
plot(c2);
plot(Cv,'b')
figure(3)
hold on
title('Acceleration')
plot(Axis1_Act_Torque,'b')
plot(c3)
