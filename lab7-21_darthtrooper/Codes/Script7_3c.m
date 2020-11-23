r = 0.95;
n= 1001;
for theta = 0:pi/3:pi
figure;
b = [1, -(2*cos(theta)), 1];
a = [1, -(2*r*cos(theta)), r^2];
freqz(b,a,n);
title('r = 0.95, theta changes from 0 to pi with increment by pi/3');
end
