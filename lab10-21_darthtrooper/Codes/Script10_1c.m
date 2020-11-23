S_Rate = 10000;
Nyquist = S_Rate/2;
Cutoff_Freq = 2000/Nyquist;
Pass_Ripple = 1;  %Assign to delta 1
Stop_Atten = 40;  %Assign to delta 2
N = 12;
[b1,a1] = butter(N,Cutoff_Freq,'low');
[b2,a2] = cheby1(N,Pass_Ripple,Cutoff_Freq,'low');
[b3,a3] = cheby2(N,Pass_Ripple,Cutoff_Freq,'low');
[b4,a4] = ellip(N,Pass_Ripple,Stop_Atten,Cutoff_Freq,'low');

n = 2001;
[h1,w1] = freqz(b1,a1,n);
[h2,w2] = freqz(b2,a2,n);
[h3,w3] = freqz(b3,a3,n);
[h4,w4] = freqz(b4,a4,n);

figure;
subplot(2,2,1);
plot(w1/pi,20*log10(abs(h1)));
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
title('Butterworth');
axis([0 1 -80 5])


subplot(2,2,2);
plot(w2/pi,20*log10(abs(h2)));
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
title('Cheby1');
axis([0 1 -80 5])


subplot(2,2,3);
plot(w3/pi,20*log10(abs(h3)));
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
title('Cheby2');
axis([0 1 -80 5])


subplot(2,2,4);
plot(w4/pi,20*log10(abs(h4)));
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
title('Elliptical');
axis([0 1 -80 5])



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
subplot(2,2,1);
plot(w1/pi,angle(h1));
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase(dB)');
title('Butterworth');



subplot(2,2,2);
plot(w2/pi,angle(h2));
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase (dB)');
title('Cheby1');



subplot(2,2,3);
plot(w3/pi,angle(h3));
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase (dB)');
title('Cheby2');



subplot(2,2,4);
plot(w4/pi,angle(h4));
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase (dB)');
title('Elliptical');




