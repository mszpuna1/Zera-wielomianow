function w=fx(x)
w=2*sin(x)-exp(x)+5*x-1;
counter=1;
for i=-5:0.5:5
    daney(counter)=2*sin(i)-exp(i)+5*i-1;
    counter=counter+1;
end
danex=[-5:0.5:5];
hold on
plot(danex,daney);
end

