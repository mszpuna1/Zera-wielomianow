function [c,iter]=sieczne(a,b, maxiteracje,epsilon)
x0=a;
x1=b;
for i=1:maxiteracje
    x2=x1- (fx(x1)*(x1-x0))/(fx(x1)-fx(x0));
    x0=x1;
    x1=x2;
    if(abs(fx(x1))<=epsilon)
        c=x1;
        iter=i;
        break;
    end
end