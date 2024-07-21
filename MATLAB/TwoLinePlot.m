%创建图窗
figure(1)
t=0:0.1:2*pi;
%绘制正弦函数图像
plot(t,sin(t));
%保留先前绘制的函数图像
hold on
%用红色虚线绘制余弦函数图像
plot(t,cos(t),'--r');
%标记横纵轴
xlabel('Time(s)')
ylabel('Function value')
%给图像添加标题
title('Sin and Cos functions')
%添加图例
legend('Sin','Cos')
%限定横纵坐标范围
xlim([0,2*pi])
ylim([-1.4,1.4])