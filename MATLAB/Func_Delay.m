function dy=Func_Delay(~,~,z)
    dy=[z(5,2)+z(3,2);
        z(1,2)+z(2,1);
        z(3,2)+z(1,1);
        z(5,2)*z(4,2);
        z(1,2)];
end