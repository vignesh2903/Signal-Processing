%Spectrum Analysisbusing DFT and fftshift()
clc; 
clear all; 
close all;
n =[0 :149];
x1 = cos(2*pi*n*0.1)+cos(2*pi*n*0.3);
N = 2048;
X = abs (fft (x1, N));
X = fftshift (X) ;      % The fftshift() function helps in shifting the 
                        % zero component to the center.
F = [-N/2: N/2-1] /N;
plot (F, X)
xlabel ('frequency/fs')
title ('Spectrum') 

%Spectrum Analysis of audio signal using DFT
clc;
clear all;
close all;
load chirp
N=2048;
X=abs(fft(y,N));
X=fftshift(X);
F=[-N/2 : N/2-1]/N;
plot(F,X)
xlabel('frequency / f_s')
title('spectrum');