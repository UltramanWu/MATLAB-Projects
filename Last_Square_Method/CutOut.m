function outputitem = CutOut(inputitem,n1,n2,m1,m2)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
outputitem = zeros(n2-n1+m2-m1,1);
for i=1:n2-n1
    outputitem(i) = inputitem(n1+i);
end
for i=1:m2-m1
    outputitem(n2-n1+i) = inputitem(m1+i);
end
end

