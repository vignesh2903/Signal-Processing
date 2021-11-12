figure;
n=0:10;
n1=-10:-1;
del_n=[zeros(1,length(n1)),ones(1,length(n))]; %for u(n)
subplot(2,1,1);
stem([n1,n],del_n);grid;
title("Unit step function for u(n)");
xlabel("n");ylabel("Amplitude");

figure;
n=0:10;
n1=-10:-1;
del_n=[zeros(1,length(n1)),ones(1,length(n))]; %for u(n)
del_n1=[zeros(1,length(n1)+1),ones(1,length(n)-1)]; %for u(n-1)
del_n10= del_n - del_n1; %for u(n)- u(n-1)
subplot(3,1,1);
stem([n1,n],del_n);grid;
title("Unit step function for u(n)");
xlabel("n");ylabel("Amplitude");
subplot(3,1,2);
stem([n1,n],del_n1);grid;
title("Unit step function for u(n-1)");
xlabel("n");ylabel("Amplitude");
subplot(3,1,3);
stem([n1,n],del_n10);grid;
title("Unit step function for u(n) - u(n-1)");
xlabel("n");ylabel("Amplitude");

figure;
n=0:10;
n1=-10:-1;
del_n=[zeros(1,length(n1)),ones(1,length(n))]; %for u(n)
del_n1=[zeros(1,length(n1)+4),ones(1,length(n)-4)]; %for u(n-4)
del_n10= del_n - del_n1; %for u(n)- u(n-4)
subplot(3,1,1);
stem([n1,n],del_n);grid;
title("Unit step function for u(n)");
xlabel("n");ylabel("Amplitude");
subplot(3,1,2);
stem([n1,n],del_n1);grid;
title("Unit step function for u(n-4)");
xlabel("n");ylabel("Amplitude");
subplot(3,1,3);
stem([n1,n],del_n10);grid;
title("Unit step function for u(n) - u(n-4)");
xlabel("n");ylabel("Amplitude");