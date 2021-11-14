clf;
w=-4*pi:8*pi/511:4*pi;
x=[1 1 1 1 1 zeros(1,27)];
x=transpose(x);
n = 0:length(x)-1;
y = 0 ;
for i = 1:length(w)
ex=exp(-1j*w(i)*n); 
y(i) = ex*x;
end
subplot (2,1,1);
plot (w/pi, abs(y));
grid on
xlabel('Frequency (w)');
ylabel('Magnitude (abs(y))');
title('Magnitude plot [H (e^{j\omega})]');
subplot (2,1,2);
plot (w/pi, angle (y)) % For the phase plot in radian grid on;
xlabel('Frequency (w)');
ylabel ("Phase Angle (in Radian)")









