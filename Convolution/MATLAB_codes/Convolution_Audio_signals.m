clc;
close all;
clear all;
load chirp
load farspeech
z=x(1:13129)+y; %additive mixing
p=conv(x,y);    %conv mixing
figure
subplot(3,1,1);
plot(x);
title("additive mixing")
subplot(3,1,2);
plot(y);clc
subplot(3,1,3);
plot(z);
figure
subplot(3,1,1);
plot(x);
title("Convolution");
subplot(3,1,2);
plot(y);
subplot(3,1,3);
plot(p);