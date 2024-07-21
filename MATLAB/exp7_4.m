clc
clear
%载入数据
load('regression.mat');
figure(1)
%绘制散点图
scatter(X,Y,'black','.');
hold on
xaug=[X,ones(size(X))];
%编写squaredCostReduced函数
squaredCostReduced=@(beta)(squaredCost(beta,xaug,Y));
beta=fminsearch(squaredCostReduced,[0;0]);
jbeta=squaredCostReduced(beta);
y1=zeros(100,1);
for i=1:1:100
    y1(i,1)=xaug(i,:)*beta;
end
P=polyfit(X,Y,1);
y2=polyval(P,X);
plot(X,y1,'.b',X,y2);
hold on
legend('Data','Fminisearch','Polyfit')
betai=(xaug'*xaug)^(-1)*xaug'*Y;
betaj=(xaug'*xaug)\xaug'*Y;
b=regress(Y,[ones(size(Y)),X]);
%给定不同的范数值
for i=1:2
    figure(i+1)
    p=i;
    %编写absoluteCostReduced函数值
    absoluteCostReduced=@(betal)(absoluteCost(betal,xaug,Y,p));
    betall=fminsearch(absoluteCostReduced,[0;0]);
    jbetal=absoluteCostReduced(betall);
    y3=zeros(100,1);
    for j=1:100
        y3(j,1)=xaug(j,:)*betall;
    end
    scatter(X,Y,'k','.');
    hold on;
    plot(X,y2,'b',X,y3,'r');
    legend('data','Squared','Ablolute');
end