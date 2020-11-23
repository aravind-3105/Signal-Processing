x_1 = rectwin(51);
x_2 = rectwin(75);
x_3 = rectwin(101);

X_1 =  fft(x_1,500);
X_2 =  fft(x_2,500);
X_3 =  fft(x_3,500);

X_1 =  fftshift(X_1);
X_2 =  fftshift(X_2);
X_3 =  fftshift(X_3);
phase_1 = angle(X_1);
phase_2 = angle(X_2);
phase_3 = angle(X_3);
%wvtool(rectwin(51))
figure; 
subplot(3,3,1);
plot(x_1);
xlabel("time");
title("Time domain signal in rectangular window-1");

subplot(3,3,2);
X1_deb = 20*log10(abs(X_1/51));
plot(X1_deb);
ylim([-100,10])
xlabel("N");
ylabel("Magnitude");
title("Magnitude in rectangular window-1");


subplot(3,3,3);
plot(phase_1);
xlabel("N");
title("Phase in rectangular window-1");

subplot(3,3,4);
plot(x_2);
xlabel("time");
title("Time domain signal in rectangular window-2");

subplot(3,3,5);
X2_deb = 20*log10(abs(X_2/75));
plot(X2_deb);
ylim([-100,10])
xlabel("N");
ylabel("Magnitude");
title("Magnitude in rectangular window-2");


subplot(3,3,6);
plot(phase_2);
xlabel("N");
title("Phase in rectangular window-2");

subplot(3,3,7);
plot(x_3);
xlabel("time");
title("Time domain signal in rectangular window-3");

subplot(3,3,8);
X3_deb = 20*log10(abs(X_3/101));
plot(X3_deb);
ylim([-100,10])
xlabel("N");
ylabel("Magnitude");
title("Magnitude in rectangular window-3");


subplot(3,3,9);
plot(phase_3);
xlabel("N");
title("Phase in rectangular window-3");
