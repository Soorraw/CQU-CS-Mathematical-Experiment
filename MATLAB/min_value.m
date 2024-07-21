clc
clear
figure(1)
[x1, x2] = meshgrid(-5 : 0.1 : 5, -5 : 0.1 : 5);
z = -20 * exp(-0.2 * sqrt(0.5 * (x1.^ 2 + x2.^ 2))) - exp(0.5 * (cos(2 * pi * x1) + cos(2 * pi * x2))) + 22.713;
%绘制该函数的曲面图形
surf(x1, x2, z)
%判断是否存在全局最优解
f = @(x)-20 * exp(-0.2 * sqrt(0.5 * (x(1)^ 2 + x(2)^ 2))) - exp(0.5 * (cos(2 * pi * x(1)) + cos(2 * pi * x(2)))) + 22.713;
[x,fval,exitflag] = fminunc(f, [-5,-5]);
