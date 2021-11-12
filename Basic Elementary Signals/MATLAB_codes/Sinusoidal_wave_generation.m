N=64;                   %samples=64
n=0:N-1;
f=1000;                 %Frequency=1000
fs=8000;                %Sampling frequency=8000
x=sin(2*pi*(f/fs)*n);   %Generating the sine wave
subplot(2,1,1);
plot(n,x);
title("Sine wave");
xlabel("Sample Number");
ylabel("Amplitude");
subplot(2,1,2);
stem(n,x);
xlabel("Sample Number");
ylabel("Amplitude");