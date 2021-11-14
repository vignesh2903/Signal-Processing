clc;
clear all;
close all;
n = [0:29];
x = cos(2*pi*n*0.1)+cos(2*pi*n*0.3);
N1 = 64;
N2 = 512;
N3 = 1024;
X1 = abs(fft(x,N1));
X2 = abs(fft(x,N2));
X3 = abs(fft(x,N3));
F1 = [0 : N1 - 1]/N1;
F2 = [0 : N2 - 1]/N2;
F3 = [0 : N3 - 1]/N3;
subplot(3,1,1)
plot(F1,X1,'-x')
title('N = 64')
axis([0 1 0 20])
subplot(3,1,2)
plot(F2,X2, '-x')
title('N = 512')
axis([0 1 0 20])
subplot(3,1,3)
plot(F3,X3, '-x')
title('N = 1024')
axis([0 1 0 20])

%y increasing the N value (Length of the DFT) the spectrum gets more sharper 
%With more precision in the graph.