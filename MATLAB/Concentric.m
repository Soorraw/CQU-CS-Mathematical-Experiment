%获取五种颜色的三元组
color=jet(5);
for i=1:1:5
    %计算半径为i的第i个同心圆的圆弧点坐标
    [x,y]=getCircle([0,0],i);
    %绘制线宽为12-2i,颜色序号为i的同心圆
    plot(x,y,LineWidth=12-2*i,Color=color(i,:));
    %保留同心圆图像
    hold on;
end
axis equal