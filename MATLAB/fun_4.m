function [c, ceq]= fun_4(x)
    c = [(x(1) .^ 2) * x(2) - 675;
        (x(1) .^ 2) * (x(3) .^ 2) / 1e7 - 0.419];
    ceq = [];
end