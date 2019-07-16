N_max=430;
N_delta=1;
[T_integral,v_integral,Delta_v,Elpha] = Integration_Torque_Velocity_and_Delta_v(Axis1_Act_Torque,Axis1_Act_Velocity,0.00025,N_max,N_delta);
Omiga_Seta = zeros(N_max,2);
omiga_seta = zeros(N_max*N_delta,2);
for i = 1:N_max
    Omiga_Seta(i,1) = Delta_v(i);
    Omiga_Seta(i,2) = v_integral(i);
end

for i = 1:N_max
    omiga_seta(i,1) = Elpha(i);
    omiga_seta(i,2) = Axis1_Act_Velocity(i)/8388608*2*pi;
end  

J_B = Omiga_Seta\T_integral;

plot(T_integral-Omiga_Seta*J_B,'r');
hold on
plot(T_integral,'b');
plot(Omiga_Seta* J_B,'g');
hold off

% figure(2);
% plot(Axis1_Act_Torque/1000*2.39);
% hold on
% plot(Axis1_Act_Torque/1000*2.39-omiga_seta*J_B);
% plot(omiga_seta* J_B);
% hold off
