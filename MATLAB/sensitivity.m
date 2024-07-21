%sensitivity函数的参数依次为矩阵A,矩阵b,绘图序号,方程组图像的横纵坐标范围
function []=sensitivity(A,b,id,X,Y)
    figure(id(1))
    %计算矩阵A的条件数
    condA=norm(A)*norm(A^-1);
    disp(condA);
    %绘制方程组图像
    for i=1:2
        fimplicit(@(X1,X2)A(i,1)*X1+A(i,2)*X2-b(i,1),[X(1),X(2),Y(1),Y(2)])
        hold on
    end
    figure(id(2))
    %求解x的真解
    x_true=A\b;
    tau=0.0001;
    x=cell(1,1000);
    %求解1000个相近方程组的解
    for i=1:1000
        DeltaA=tau*randn(2,2);
        x{1,i}=(A+DeltaA)\b;
        %绘制向前误差散点图
        e=x{1,i}-x_true;
        scatter(e(1),e(2));
        hold on
    end
    figure(id(3))
    for i=1:1000
        %绘制向后误差散点图
        r=b-A*x{1,i};
        scatter(r(1),r(2));
        hold on;
    end
end
