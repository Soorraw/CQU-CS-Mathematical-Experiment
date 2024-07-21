%函数的返回值和参数依次为:近似解,过程解,过程解的数目;给定函数,初始解,精度
function [x0_slove,x_solve,i]=Newton(f,x0_origin,err)
    syms x;
    x_solve=zeros(1,1000);
    x_solve(1)=x0_origin;
    i=1;
    %求出导函数
    df=diff(f);
    while true
        %利用迭代法逼近真解
        x_solve(i+1)=x_solve(i)-subs(f,x,x_solve(i))/subs(df,x,x_solve(i));
        %当精度小于给定精度时结束循环
        if (abs(x_solve(i+1)-x_solve(i))<err)
            break;
        end
        i=i+1;
    end
    x0_slove=x_solve(i+1);
end