S_Rate = 10000;
Nyquist = S_Rate/2;
Cutoff_Freq = 2000/Nyquist;
Pass_Ripple = 1;  %Assign to delta 1
Stop_Atten = 40;  %Assign to delta 2
N = 6;
[b1,a1] = butter(N,Cutoff_Freq,'low');
[b2,a2] = cheby1(N,Pass_Ripple,Cutoff_Freq,'low');
[b3,a3] = cheby2(N,Pass_Ripple,Cutoff_Freq,'low');
[b4,a4] = ellip(N,Pass_Ripple,Stop_Atten,Cutoff_Freq,'low');

n = 2001;
figure;
impz(b1,a1,n);
axis([0 50 -1 1])
title("Butterworth");
figure;
impz(b2,a2,n);
axis([0 50 -1 1])
title("Cheby1");
figure;
impz(b3,a3,n);
axis([0 50 -1 1])
title("Cheby2");
figure;
impz(b4,a4,n);
axis([0 50 -1 1])
title("Elliptical");








