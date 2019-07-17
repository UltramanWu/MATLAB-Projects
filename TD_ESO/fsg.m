function [fs] = fsg(x,d)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
fs = (sign(x+d)-sign(x-d))/2;
end

