function [c,iter]=styczne(a, maxiteracje,epsilon)
x0=a;
for i=1:maxiteracje
    x1=x0-fx(x0)/dfx(x0); %dfx jest oddzielnie napisan¹ funkcj¹
    x0=x1;
    if (abs(fx(x0))<=epsilon)
        c=x0;
        iter=i;
    break;
    end
end

end