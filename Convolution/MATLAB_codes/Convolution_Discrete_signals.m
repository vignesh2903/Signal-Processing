clc;
clear all;
close all;
x=input("Enter x:")
h=input("Enter h:")
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
disp(Y)
figure
stem(Y);
xlabel("n");ylabel("Y[n]");title("Convolution")

% using inbuilt command
clc;
close all;
clear all;
x=[1 2 3 4 ];
h=[5 6 7 8];
z=conv(x,h)
stem(z);
xlabel("n");ylabel("Y[n]");title("Convolution")
