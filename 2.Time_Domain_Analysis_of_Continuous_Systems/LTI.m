% LTI 的 零状态响应
sys = tf([1],[1 2 77]);
t = 0:0.01:5;
f = 10 * sin(2*pi*t);
y = lsim(sys,f,t);
plot(t,y);
xlabel('Time(sec)');
ylabel('y(t)')

% 冲激响应 和 阶跃响应
a = [7 4 6];
b = [1 1];
subplot(2,1,1)
impulse(b,a);
subplot(2,1,2)
step(b,a);

% 卷积积分
t11 = 0; t12 = 1;
t21 = 0; t22 = 2;
t1 = t11: 0.001: t12;
t2 = t21: 0.001: t22;
%方波信号，幅值为1，宽度为1，关于t1=0.5对称
ft1 = 2*rectpuls(t1-0.5,1); 
%三角波信号
ft2 = t2;
t3 = t11+t21 : 0.001 : t12+t22;
ft3 = conv(ft1,ft2);
ft3 = ft3*0.001;
figure(2);
plot(t3,ft3)
title('ft1(t)*ft2(t)')