n=-10:10;
ramp=zeros(1,length(n));
q=1;
for p=n(1):n(end)
    if p<=0
        ramp(q)=0;
        q=q+1;
    else
        ramp(q)=p;
        q=q+1;
    end
end
stem(n,ramp);
grid;
title("Ramp sequence");
xlabel("n");ylabel("Amplitude");