%分别给定五环的横纵坐标和颜色
nx=[-1,-0.5,0,0.5,1];
ny=[0,-0.5,0,-0.5,0];
color=['b','y','k','g','r'];
for i=1:1:5
    %计算圆心为(nx(i),ny(i)),半径为0.45的第i个同心圆的圆弧点坐标
    [x,y]=getCircle([nx(i),ny(i)],0.45);
    %绘制线宽为2,颜色序号为i的圆环
    plot(x,y,LineWidth=2,Color=color(i));
    %保留圆环图像
    hold on;
end
axis equal