%在1x3的网格图中选中位于(1,1)的子图区域
subplot(1,3,1)
%利用polarplot函数绘制极坐标曲线
theta=0:0.1:10*pi;
polarplot(theta,cos(7*theta/2))
%添加标题
title('ρ=cos(7θ/2)')

%在1x3的网格图中选中位于(1,2)的子图区域
subplot(1,3,2)
%利用fimplicit函数绘制由指定参数组成的隐函数图像
fimplicit(@(x,y)x.*sin(x)+y.*cos(y),[-30,30])
%调整横纵轴比例至相同
axis equal
%调整纵轴的刻度
set(gca,'YTick',-30:10:30);
%添加标题
title('x*sin(x)+y*cos(y)=0')

%在1x3的网格图中选中位于(1,3)的子图区域
subplot(1,3,3)
%利用fplot函数绘制参数方程图像
fplot(@(t)sin(t),@(t)sin(t/2),[0,4*pi])
%调整横纵轴比例至相同
axis equal
%调整横纵轴的刻度
set(gca,'XTick',-1:0.5:1);
set(gca,'YTick',-1:0.5:1);
%添加标题
title('x=sin(t),y=sin(t/2)')