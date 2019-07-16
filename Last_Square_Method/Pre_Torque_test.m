A = 0.04*2*pi;
w = 50;
n = 1000;

Pos = zeros(n,1);
sigma = zeros(n,1);
alpha = zeros(n,1);
Tor = zeros(n,1);

for t = 1:n 
    Pos(t) = A*(1-cos(w*t));
    sigma(t) = A*w*sin(w*t);
    alpha(t) = A*w*w*cos(w*t);  %求解二阶导数
    Tor(t) = J_B(1)*alpha(t) + J_B(2)*sigma(t);
end

%% 绘制图表
figure(1);
title('Position');
hold on;
plot(Pos);

figure(2);
title('Velocity');
hold on;
plot(sigma);

figure(3);
hold on;
title('Acceleration')
plot(alpha);

figure(4);
hold on;
title('Pre—Torque')
plot(Tor);