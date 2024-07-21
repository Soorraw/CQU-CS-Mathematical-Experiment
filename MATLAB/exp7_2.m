clc
clear
%(a)
%以年为单位的时间数组
t=1/12:1/12:15;
%载入数据
y=load('scrippsm.txt')';
Func7_2a=@(c,t)(c(1)+c(2)*t+c(3)*cos(2*pi*t)+c(4)*sin(2*pi*t));
c0=[0,0,0,0];
[c,RMSE]=lsqcurvefit(Func7_2a,c0,t,y);
%拓展后的时间数组
t_etd=-7+1/12:1/12:35;
figure(1)
plot(t_etd,Func7_2a(c,t_etd));
hold on
scatter(t,y,'black','.')

%(b)
%真实数据
y_real=[380.63,374.06,382.45,376.73];
t_real=[8+5/12,8+9/12,9+5/12,9+9/12];
%计算预测数据与真实数据的误差
for i=1:4
    delta_b=y_real-Func7_2a(c,t_real);
end

%(c)
Func7_2c=@(cc,t)(cc(1)+cc(2)*t+cc(3)*cos(2*pi*t)+cc(4)*sin(2*pi*t)+cc(5)*cos(4*pi*t));
cc0=[0,0,0,0,0];
[cc,RMSEc]=lsqcurvefit(Func7_2c,cc0,t,y);
t_etd=-7+1/12:1/12:35;
figure(2)
plot(t_etd,Func7_2c(cc,t_etd));
hold on
scatter(t,y,'black','.')
y_real=[380.63,374.06,382.45,376.73];
t_real=[8+5/12,8+9/12,9+5/12,9+9/12];
for i=1:4
    delta_c=y_real-Func7_2c(cc,t_real);
end

%(d)
Func7_2d=@(cd,t)(cd(1)+cc(2)*t+cd(3)*cos(2*pi*t)+cd(4)*sin(2*pi*t)+cd(5)*t.^2);
cd0=[0,0,0,0,0];
[cd,RMSEd]=lsqcurvefit(Func7_2d,cd0,t,y);
t_etd=-7+1/12:1/12:35;
figure(3)
plot(t_etd,Func7_2d(cd,t_etd));
hold on
scatter(t,y,'black','.')
y_real=[380.63,374.06,382.45,376.73];
t_real=[8+5/12,8+9/12,9+5/12,9+9/12];
for i=1:4
    delta_d=y_real-Func7_2d(cd,t_real);
end

%(e)
Func7_2e=@(ce,t)(ce(1)+ce(2)*t+ce(3)*cos(2*pi*t)+ce(4)*sin(2*pi*t)+ce(5)*cos(4*pi*t)+ce(6)*t.^2);
ce0=[0,0,0,0,0,0];
[ce,RMSEe]=lsqcurvefit(Func7_2e,ce0,t,y);
t_etd=-7+1/12:1/12:35;
figure(4)
plot(t_etd,Func7_2e(ce,t_etd));
hold on
scatter(t,y,'black','.')
y_real=[380.63,374.06,382.45,376.73];
t_real=[8+5/12,8+9/12,9+5/12,9+9/12];
for i=1:4
    delta_e=y_real-Func7_2e(ce,t_real);
end