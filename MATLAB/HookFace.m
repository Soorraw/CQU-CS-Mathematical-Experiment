figure(1);
%获取指定范围和步长的横纵坐标矩阵
[x,y]=meshgrid(-1:0.05:1,-1:0.05:1);
%计算指定函数
z=sin(pi*sqrt(x.^2+y.^2));
%绘制三维图形
surf(x,y,z);

figure(2);
%获取指定范围和步长的横纵坐标矩阵
[u,v]=meshgrid(0:0.05:2*pi,0:0.05:2*pi);
%计算指定函数
x=(1+cos(u)).*cos(v);
y=(1+cos(u)).*sin(v);
z=sin(u);
%绘制三维图形
surf(x,y,z);