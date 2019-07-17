function [fh] = fhan(v1,v2,R0,h0)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
d = R0*h0^2;
a0 = h0*v2;
y = v1+a0;
a1 = sqrt(d*(d+8*abs(y)));
a2 = a0 + sign(y)*(a1-d)/2.0;
a = (a0+y)*fsg(y,d) + a2*(1-fsg(y,d));
u = -R0*a/d*fsg(a,d) - R0*sign(a)*(1-fsg(a,d));
fh = u;
end

