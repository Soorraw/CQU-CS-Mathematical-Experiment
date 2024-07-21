clc;
clear;
figure(1)
%椭圆曲线上的给定坐标点
x=[5.764,6.286,6.754,7.168,7.408];
y=[0.648,1.202,1.823,2.526,3.360];
%椭圆的一般方程
A=[x.^2,2*x.*y,y.^2,2*x,2*y];
A=reshape(A,5,5);
b=[-1;-1;-1;-1;-1];
%求解椭圆参数
arg=A\b;
%绘制椭圆轨迹图
fimplicit(@(x,y)arg(1)*x.^2+2*arg(2)*x.*y+arg(3)*y.^2+2*arg(4)*x+2*arg(5)*y+1)