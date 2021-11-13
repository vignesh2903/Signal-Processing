% Autocorrelation-inbuilt function
clc;
clear all;
close all;
N=1024;
f1=1;
FS=200;
n=0:N-1;
x=sin(2*pi*f1*n/FS);
t=[1:N]*(1/FS);
subplot(2,1,1);
plot(t,x);
title("sine wave");
xlabel("time");
ylabel("Amplitude");
Rxx=xcorr(x);
subplot(2,1,2);
plot(Rxx);
title("Autocorrelated");

% Generalized correlation 
clc;
clear all;
close all;
x=input("Enter x:")
h=input("Enter h:")
h=fliplr(h)
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        end
    end
end
figure
stem(Y);
xlabel("n");ylabel("Y[n]");title("Correlation")







