function outputitem = CutOut(inputitem,n1,n2,m1,m2)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
outputitem = zeros(n2-n1+m2-m1,1);
for i=1:n2-n1
    outputitem(i) = inputitem(n1+i);
end
for i=1:m2-m1
    outputitem(n2-n1+i) = inputitem(m1+i);
end
end

