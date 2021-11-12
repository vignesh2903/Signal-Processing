%complex-valued exponential sequence
figure;
clf;
c=-(1/12)+(pi/6)*i;
K=2;
n=0:40;
x=K*exp(c*n);
subplot(2,1,1);
stem(n,real(x));
title("Real part");
xlabel("n");ylabel("Amplitude");
subplot(2,1,2);
stem(n,imag(x));
title("imaginary part");
xlabel("n");ylabel("Amplitude");


figure;
clf;
n=0:35;
x1=0.3*1.2.^+n;
x2=0.3*-1.2.^+n;
x3=0.3*0.8.^+n;
subplot(3,1,1);
stem(n,x1);
title("Growing exponential sequence");
xlabel("n");ylabel("Amplitude");
subplot(3,1,2);
stem(n,x2);
title("Real exponential sequence in -ve direction");
xlabel("n");ylabel("Amplitude");
subplot(3,1,3);
stem(n,x3);
title("Decaying exponential sequence");
xlabel("n");ylabel("Amplitude");