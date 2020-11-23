b = [1];
a = [1, -0.5, 0.2, -0.1, 0.007, 0.14, 0.15];
figure;
%Frequency Response
[h,w] = freqz(b,a,'whole');
subplot(2,1,1);
plot(w/pi,abs(h))
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')

subplot(2,1,2);
plot(w/pi,angle(h));
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('phase')
figure;
%Plot-Zero Plot
zplane(b,a);
title('Plot-Zero Plot');