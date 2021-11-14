clc;
clear all;
Fp = 3500;
Fs = 4500;
Wp = 2*pi*Fp; 
Ws = 2*pi*Fs;
[N, Wn] = cheb1ord(Wp, Ws, 0.5, 30,'s');
[b,a] = cheby1(N,0.5,Wn,'high','s');
wa = 0:(3*Ws)/511:3*Ws;
h = freqs(b,a,wa);
plot(wa/(2*pi), 20*log10(abs(h)));
grid
xlabel('Frequency, Hz');
ylabel('Gain, dB');
title('Gain response');
axis([0 3*Fs -60 5]);
