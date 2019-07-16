x = -1000:1:1000;
a = 1;
b = 16;
c = 100;
Stu = zeros(size(x));
for i = 1:length(x)
    Stu(i) = stu(a,b,c,x(i));
end
%plot(x,Stu);
plot(x,tanh(x));
hold on;