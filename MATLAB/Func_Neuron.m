function dy=Func_Neuron(~,y)
    C=1;
    Gk=36;
    Gna=120;
    Gl=0.3;
    Ek=-72;
    Ena=55;
    El=-49.4;
    dy=[(1-y(1))*alphan(y(4))-y(1)*betan(y(4));
        (1-y(2))*alpham(y(4))-y(2)*betam(y(4));
        (1-y(3))*alphah(y(4))-y(3)*betah(y(4));
        -1/C*(Gk*y(1)^4*(y(4)-Ek)+Gna*y(2)^3*y(3)*(y(4)-Ena)+Gl*(y(4)-El))];
end