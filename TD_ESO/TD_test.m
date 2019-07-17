clear;
r = 5;  %加速度
h0 = 0.0025*1;  %步长
InitPos = 0;
TarPos = 2;
x1_old = InitPos;
x1 = InitPos;
x2_old = 0;
x(1) = InitPos;
i = 1;

while x1 < TarPos
    fh = fhan(x1_old-TarPos,x2_old,r,h0);
    x1 = x1_old + h0 * x2_old;
    x2 = x2_old + h0 * fh;
    x(i) = x1;
    %%
    x1_old = x1;
    x2_old = x2;
   
    i = i+1;
end

%%
%ESO观测器
z1 = x(1);
z1_old = x(1);
z2 = 0;
z2_old = 0;
z3 = 0;
z3_old = 0;
b0 = 1/(1.66*10^-4);
BETA01 = 350;BETA02 = 2550;BETA03 = 30000;
for i =1:length(x)
    e = z1_old - x(i);
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
figure(1)
title('position');
plot(x,'r');
hold on
plot(c1,'b');
figure(2)
hold on
title('Velocity')
plot(c2);
figure(3)
hold on
title('Acceleration')
plot(c3)