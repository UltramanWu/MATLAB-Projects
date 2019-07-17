function [f] = fal(e,a,b)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
s = (sign(e+b)-sign(e-b))/2;
y = e*s/(b^(1-a))+abs(e)^a*sign(e)*(1-s);
f = y;
end

