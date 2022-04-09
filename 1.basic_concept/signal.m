%连续信号
b = 5;
a = 0.8;
t = 0:0.001:5;
x = b*exp(-a*t).*sin(pi*t);
plot(t,x);

%离散信号
c = 2;
d = 0.8;
k = -5:5;
y = c * d.^k;%注意“.^”
stem(k,y);