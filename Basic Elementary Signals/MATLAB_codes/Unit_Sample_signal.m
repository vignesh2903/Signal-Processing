n=0:10;
n1=-10:-1;
del_n=[zeros(1,length(n1)),1,zeros(1,length(n)-1)]; %for δ[n]
subplot(2,1,1);
stem([n1,n],del_n);grid;
title("Unit Sample sequence for del(n)");xlabel("n");ylabel("Amplitude");
subplot(2,1,2);
plot([n1,n],del_n);grid;
xlabel("n");ylabel("Amplitude");

% δ[n-4]
figure;
n=0:10;
n1=-10:-1;
del_n=[zeros(1,length(n1)+4),1,zeros(1,length(n)-5)]; %for δ[n-4]
subplot(2,1,1);
stem([n1,n],del_n);grid;
title("Unit Sample sequence for del(n-4)");
xlabel("n");ylabel("Amplitude");

% δ[n+8]
figure;
n=0:10;
n1=-10:-1;
del_n=[zeros(1,length(n1)-8),1,zeros(1,length(n)+7)]; %for δ[n+8]
subplot(2,1,1);
stem([n1,n],del_n);grid;
title("Unit Sample sequence for del(n+8)");
xlabel("n");ylabel("Amplitude");
