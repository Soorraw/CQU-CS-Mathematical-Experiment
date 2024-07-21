clc
clear
%载入数据并取对数，转换为线性回归
lgq=log(load('Q.txt'));
lgk=log(load('K.txt'));
lgl=log(load('L.txt'));
%求解
[b,bint,r,rint,stats]=regress(lgq,[ones(size(lgq)),lgk,lgl]);