clf;
Ws = [0.4 0.6]; 
Wp = [0.3 0.7]; 
Rp = 0.4; 
Rs = 50;
[N1, Wn1] = cheb2ord(Wp, Ws, Rp, Rs);
[num,den] = cheby2(N1,Rs,Wn1,'bandpass');
disp('Numerator coefficients are ');
disp(num);
disp('Denominator coefficients are ');
disp(den);
w = 0:pi/255:pi;
h = freqz(num,den,w); 
g= 20*log10(abs(h));
plot(w/pi,g);grid
axis([0 1 -60 5]);
xlabel('\omega /\pi'); 
ylabel('Gain, dB');
title('Gain Response of a chebychev 2 Bandpass Filter');
