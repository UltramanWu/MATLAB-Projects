function [Standard_vel,Standard_tor] = Transform(vel,tor,n)
%UNTITLED6 此处显示有关此函数的摘要
%   此处显示详细说明
%n = size(vel);
Standard_vel = zeros(n,1);
Standard_tor = zeros(n,1);
for i = 1:n
    Standard_vel(i) = vel(i)/8388608*2*pi;
    Standard_tor(i) = tor(i)/1000*2.39;  
end

end

