function [f] = fal(e,a,b)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
s = (sign(e+b)-sign(e-b))/2;
y = e*s/(b^(1-a))+abs(e)^a*sign(e)*(1-s);
f = y;
end

