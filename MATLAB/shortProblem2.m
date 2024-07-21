%创建行向量
avec=[3.14 15 9 16];
%创建行向量并转置为列向量
bvec=[2.71 8 28 182]';
%创建等差向量
cvec=5:-0.2:-5;
%创建等比向量
dvec=logspace(0,1,101);
%创建字符向量
evec='Hello';

%创建矩阵
amat=2*ones(9);
%创建对角阵
bmat=diag([1,2,3,4,5,4,3,2,1]);
%将等差向量重塑为矩阵
c=1:1:100;
cmat=reshape(c,10,10);
%创建NaN矩阵
dmat=NaN(3,4);
%将向量重塑为矩阵
e=[13 -1 5 -22 0 -87];
emat=reshape(e,2,3);
%创建元素值属于[-3,3]的5X3随机矩阵
fmat=floor(3*rand(5,3)-3*rand(5,3));
ffmat=randi([-3,3],5,3);

%矩阵运算
xmat=(avec*bvec)*amat^2;
ymat=bvec*avec;
%行列式和转置矩阵
zmat=det(cmat)*(amat*bmat)';

%按列求和
csum=sum(cmat,1);
%按行求均值
esum=mean(emat,2);
%替换矩阵第一行
emat(1,:)=[1,1,1];
%提取子矩阵
csub=cmat(2:9,2:9);
%创建等差向量并使偶数项取负
lin=1:1:20;
lin(2:2:20)=-lin(2:2:20);
%创建随机向量并进行查找替换
r=rand(1,5);
r(r<0.5)=0;

