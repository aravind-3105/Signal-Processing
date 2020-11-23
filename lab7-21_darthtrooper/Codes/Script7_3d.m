theta = pi/3;
r = 0.1;
figure;
b = [1, -(2*cos(theta)), 1];
a = [1, -(2*r*cos(theta)), r^2];
[h,w] = freqz(b,a,'whole');
subplot(2,1,1);
plot(w/pi,abs(h))
title('theta = 60 deg, radius increases for r: 0.1 ');
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')

subplot(2,1,2);
plot(w/pi,angle(h));
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')

%2nd graph
r = 0.3;
figure;
b = [1, -(2*cos(theta)), 1];
a = [1, -(2*r*cos(theta)), r^2];
[h,w] = freqz(b,a,'whole');
subplot(2,1,1);
plot(w/pi,abs(h))
title('theta = 60 deg, radius increases for r: 0.3 ');
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')

subplot(2,1,2);
plot(w/pi,angle(h));
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')

%3rd graph
r = 0.6;
figure;
b = [1, -(2*cos(theta)), 1];
a = [1, -(2*r*cos(theta)), r^2];
[h,w] = freqz(b,a,'whole');
subplot(2,1,1);
plot(w/pi,abs(h))
title('theta = 60 deg, radius increases for r: 0.6 ');
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')

subplot(2,1,2);
plot(w/pi,angle(h));
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')


%4th graph
r = 0.9;
figure;
b = [1, -(2*cos(theta)), 1];
a = [1, -(2*r*cos(theta)), r^2];
[h,w] = freqz(b,a,'whole');
subplot(2,1,1);
plot(w/pi,abs(h))
title('theta = 60 deg, radius increases for r: 0.9 ');
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')

subplot(2,1,2);
plot(w/pi,angle(h));
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')


