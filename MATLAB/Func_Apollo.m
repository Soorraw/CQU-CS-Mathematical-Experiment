function dy=Func_Apollo(t,y)
    u=1/82.45;
    u1=1-u;
    r1=sqrt((y(1)+u)^2+y(3)^2);
    r2=sqrt((y(1)-u1)^2+y(3)^2);
    %y1=x(t),y2=x(t)',y3=y(t),y4=y(t)'
    dy=[y(2);
        2*y(4)+y(1)-u1*(y(1)+u)/(r1^3)-u*(y(1)-u1)/(r2^3);
        y(4);
        -2*y(2)+y(3)-u1*y(3)/(r1^3)-u*y(3)/(r2^3)];
end