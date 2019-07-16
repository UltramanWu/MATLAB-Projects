function [B,J] = Last_Square_Method_Function(T,v,Delta_v,n)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
T_arg = 0;  %对所有的T求平均
v_arg = 0;  %对所有的v求平均
Delta_v_arg = 0;  %对所有的Delta_v求平均
T_sum = 0;  %对所有的T求和
v_sum = 0;  %对所有的v求和
Delta_v_sum = 0; %对所有的Delta_v求和
B_up = 0;
B_Down = 0;
for i = 1:n
    T_sum = T_sum + T(i);
    v_sum = v_sum + v(i);
    Delta_v_sum = Delta_v_sum + Delta_v(i);
end

    T_arg = T_sum / n;   %求取各数据的平均值
    v_arg = v_sum / n;
    Delta_v_arg = Delta_v_sum / n;

for i = 1:n    
    B_up = B_up + ( (T(i)-T_arg / Delta_v_arg * Delta_v(i))*(v(i)-v_arg / Delta_v_arg * Delta_v(i)));
    B_Down = B_Down + ( (v(i)-v_arg / Delta_v_arg * Delta_v(i)) * (v(i)-v_arg / Delta_v_arg * Delta_v(i)));
end

B = B_up / B_Down;
J = (T_arg - B * v_arg) / Delta_v_arg;
end

