%创建参数为圆心坐标和半径，返回值为圆弧点横纵坐标向量的函数
function [x,y]=getCircle(center,r)
    t=0:0.01:2*pi;
    %通过缩放和平移计算圆弧点坐标
    x=cos(t)*r+center(1);
    y=sin(t)*r+center(2);
end
