clc
clear
figure(1);
f=@func;
for i=1:100
    solve=fsolve(f,[rand,rand]);
    %绘制散点图
    scatter(solve(1),solve(2));
    hold on
end