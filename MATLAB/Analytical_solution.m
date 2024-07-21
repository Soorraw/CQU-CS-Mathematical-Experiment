clc
clear
figure(1)
%指定y1为x的函数
syms y1(x)
%分别给出微分方程和初始值
y1=dsolve(diff(y1,x)==y1+2*x,y1(0)==1);
fplot(y1);

figure(2)
%指定y2为x的函数
syms y2(x)
%分别给出微分方程和初始值
dy2=diff(y2,x);
y2=dsolve(diff(y2,x,2)+y2*cos(x)==0,[dy2(0)==0,y2(0)==1]);

%对于不存在解析解的微分方程，求出其在[-5,10]上的数值解
[x,y]=ode23('Func2',[-5,10],[1,0]);
%函数y(x)和y'(x)的值
y3=y(:,1);
y4=y(:,2);
plot(x,y3,'r',x,y4,'b');