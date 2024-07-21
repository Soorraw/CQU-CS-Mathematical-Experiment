clc
clear
%给定方程
f1='exp(x)-3*x';
%分别利用fzero,fsolve函数求解方程的近似解
x0_1_1=fzero(f1,[-1,1]);
x0_1_2=fsolve(f1,[-1,1]);

%绘制给定函数
x1=-1:0.01:0;
y1=x1.^7+2.*x1.^5+3.*x1.^3+5.*x1+7;
figure(1)
plot(x1,y1,'r')
%绘制x轴,并利用交点图像判断给定方程的实根数
line([-2,0],[0,0]);
%分别利用roots,fzero,fsolve函数求解方程的近似解
f2='x.^7+2.*x.^5+3.*x.^3+5.*x+7';
x0_2_1=roots([1,0,2,0,3,0,5,7]);
x0_2_2=fzero(f2,[-1,1]);
x0_2_3=fsolve(f2,[-1,1]);

%用牛顿迭代法求解给定函数的近似解
syms x;
f=x.^7+2.*x.^5+3.*x.^3+5.*x+7;
%初始解
x0_origin=0;
%精度
err=10^(-4);
[x0_solve,x_solve,len]=Newton(f,x0_origin,err);