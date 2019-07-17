function [s] = sign_user(x)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
if x>0
    s = 1.0;
elseif x == 0
    s = 0;
else
    s = -1.0;
end

