function [c,iter]=bisekcja(a,b,maxiterations,epsilon)
%a,b-ko�ce przedzia�u, epsilon - maksumalny b��d
for n=1:maxiterations
    c=(a+b)/2;
    if ((fx(c)*fx(a))<0)
        b=c;
    end
    if((fx(c)*fx(b))<0)
        a=c;
    end
    if(abs(fx(c))<=epsilon)
        iter=n;
        break;
    end     
end
end