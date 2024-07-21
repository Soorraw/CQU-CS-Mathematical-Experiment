clc
clear
figure(1)
%t=0时的初始值
Initial=[0.5,0.5,0.5,-60];
%模拟系统运行20ms
[t,y]=ode45('Func_Neuron',[0,20],Initial);
%绘制膜电压图像
plot(t,y(:,4));
title('Approaching Steady State')
xlabel('Time (ms)')
ylabel('Transmembrane Voltage (mV)')
%参数的稳态值
ySS=y(end,:);
figure(2)
for i=1:10
    %分别求解微分方程组
    ySS(4)=ySS(4)+1;
    [ti,yi]=ode45('Func_Neuron',[0,20],ySS);
    vi=yi(:,4);
    %检查峰值电压是否超过0毫伏,如果超过，用红线画出电压曲线
    if(max(vi)>0)
        plot(ti,vi,'r');
    %如果没有超过,用黑线画出电压曲线。
    else 
        plot(ti,vi,'k');
    end 
    hold on
end
title('Threshold Behavior')
xlabel('Time (ms)')
ylabel('Transmembrane Voltage (mV)')