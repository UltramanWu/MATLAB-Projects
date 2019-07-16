function [F] = fal(e,alpha,sigma)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
s = (sign(e+sigma)-sign(e-sigma))/2;
F = s*(e/(sigma)^(1-alpha)) + abs(e)^alpha * sign(e)*(1-s);
end