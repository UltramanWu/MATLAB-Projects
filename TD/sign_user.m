function [s] = sign_user(x)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if x>0
    s = 1.0;
elseif x == 0
    s = 0;
else
    s = -1.0;
end

