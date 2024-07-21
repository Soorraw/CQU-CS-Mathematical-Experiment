clc;
clear;
%载入随机数据
load('randomData.mat');
figure(1)
%进行必要的标注(1)
title('Polynomial fits to random data');
xlabel('x');
ylabel('y');
hold on
%绘制原始数据的散点图
scatter(x,y,'blue','.');
hold on
%分别进行1-5次多项式拟合并绘制曲线图像
for i=1:5
    [p,s,mu]=polyfit(x,y,i);
    tmp=polyval(p,x,s,mu);
    plot(x,tmp)
    hold on
end
%进行必要的标注(2)
legend('Data','Order 1','Order 2','Order 3','Order 4','Order 5','Location','SouthEast');