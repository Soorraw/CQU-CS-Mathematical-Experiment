function dy=Func2(t,y)
    dy(1,1)=y(2);
    dy(2,1)=-y(1)*cos(t);
end