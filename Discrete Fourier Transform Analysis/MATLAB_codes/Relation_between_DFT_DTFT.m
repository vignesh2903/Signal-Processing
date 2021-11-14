clc;
clear all;
close all;
k=0:31;
x=[1 1 1 1 1 zeros(1,27)];
[h w] = freqz(x,1,'whole');
plot(w/(2*pi),abs(h)); grid;
xlabel('freq');
ylabel('|H(e^{j\omega})|');
title('Relation between DTFT and DFT');
x=fft(x);
hold on;
stem(k/32,abs(x),'ro');grid;
hold off;

figure
x1= cos (2*pi*k*3/16) ;
[h1 w1]=freqz (x1 , 1 , 'whole' ) ;
plot (w1/ (2*pi) , abs(h1) ) ; grid;
xlabel ( ' freq' ) ; 
ylabel (' | H(e^{j \omega}) |' ) ;
title ('Relation between DTFT & DFT');
X=fft(x1) ; hold on;
stem (k/32 , abs(X) , 'ro' ) ; grid;
hold off;

% DTFT and DFT relationship with inbuilt
clc; clear all; close all;
k=0:31;
x= cos (2*pi*k*3/16) ;
[h w]=freqz (x , 1 , 'whole' ) ;
figure(1);
plot (w/ (2*pi) , abs(h) ) ; grid;
xlabel ( ' freq' ) ; ylabel (' | H(e^{j \omega}) |' ) ;
title ('Relation between DTFT & DFT' ) ;
X=fft(x) ; hold on;
stem (k/32 , abs(X) , 'ro' ) ; grid;

% DTFT and DFT relationship without inbuilt
k1=0:31;
x1= [1 1 1 1 1 zeros(1,27)]; %cos (2*pi*k*3/16) ;
[h1 w1]=freqz (x1 , 1 , 'whole' ) ;
figure(2);
plot (w1/ (2*pi) , abs(h1) ) ; grid;
xlabel ( ' freq' ) ; ylabel (' | H(e^{j \omega}) |' ) ;
title ('Relation between DTFT & DFT - Discrete' ) ;
X1=fft(x1) ; hold on;
stem (k1/32 , abs(X1) , 'ro' ) ; grid;