function [B,J] = Last_Square_Method_Function(T,v,Delta_v,n)
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
T_arg = 0;  %�����е�T��ƽ��
v_arg = 0;  %�����е�v��ƽ��
Delta_v_arg = 0;  %�����е�Delta_v��ƽ��
T_sum = 0;  %�����е�T���
v_sum = 0;  %�����е�v���
Delta_v_sum = 0; %�����е�Delta_v���
B_up = 0;
B_Down = 0;
for i = 1:n
    T_sum = T_sum + T(i);
    v_sum = v_sum + v(i);
    Delta_v_sum = Delta_v_sum + Delta_v(i);
end

    T_arg = T_sum / n;   %��ȡ�����ݵ�ƽ��ֵ
    v_arg = v_sum / n;
    Delta_v_arg = Delta_v_sum / n;

for i = 1:n    
    B_up = B_up + ( (T(i)-T_arg / Delta_v_arg * Delta_v(i))*(v(i)-v_arg / Delta_v_arg * Delta_v(i)));
    B_Down = B_Down + ( (v(i)-v_arg / Delta_v_arg * Delta_v(i)) * (v(i)-v_arg / Delta_v_arg * Delta_v(i)));
end

B = B_up / B_Down;
J = (T_arg - B * v_arg) / Delta_v_arg;
end

