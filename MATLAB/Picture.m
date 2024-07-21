%读取指定文件的图像信息
a=imread('C:\Users\华硕\Desktop\camera.gif');
%调整为一维向量组
a=reshape(a,1,[]);
%绘制分布直方图
histogram(a);