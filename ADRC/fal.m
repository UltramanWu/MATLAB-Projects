function [F] = fal(e,alpha,sigma)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
s = (sign(e+sigma)-sign(e-sigma))/2;
F = s*(e/(sigma)^(1-alpha)) + abs(e)^alpha * sign(e)*(1-s);
end