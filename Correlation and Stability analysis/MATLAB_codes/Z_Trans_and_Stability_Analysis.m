%Normalized Frequency
clc;
clear all;
close all;
b=[1 -1.6180 1];
a=[1 -1.5161 0.878];
A=roots(a);
B=roots(b);
freqz(b,a)

%Z- transform and inverse Z- transform
clc
clear all;
syms z n
a = ztrans(1/4^n)         %Z- transform
b = iztrans(z/(z-1/4))    %inverse Z- transform

%Stability Analysis
clc;
clear all;
close all;
b=[1 -1.6180 1];
a=[1 -1.5161 0.878];
A=roots(a);
B=roots(b);
zplane(b,a);