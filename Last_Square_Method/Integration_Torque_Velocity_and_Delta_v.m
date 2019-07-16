function [T_integral,v_integral,Delta_v,Elpha] = Integration_Torque_Velocity_and_Delta_v(T,v,Delta_t,n,time)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

T1 = zeros(n*time,1);
v1 = zeros(n*time,1);
Elpha = zeros(n*time,1);
%��λ����

for j = 1:n*time
T1(j) = T(j)/1000*2.39;  % ��׼��λ�� N*m
v1(j) = v(j)/8388608*2*pi; %��׼��λ�� rad/s
end

T_integral = zeros(n,1);  %������ֵ���ֽ��в���
v_integral = zeros(n,1);  %�Խ��ٶȻ��ֽ��в���
Delta_v = zeros(n,1);     %�ԽǼ��ٶȻ��ֽ��в���

for i = 1:n-1
    for j = ((i-1)*time+1):i*time
        T_integral(i) = T_integral(i)+ T1(j)*Delta_t;
        v_integral(i) = v_integral(i)+ v1(j)*Delta_t;
    end
    Delta_v(i) = v1(i*time+1)-v1(i*time);
end

for i = 1:n*time-1
    Elpha(i) = (v1(i+1)-v1(i))/Delta_t;
end
    
