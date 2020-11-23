fs = 10000;
Ts = 1/fs;
t = 0:Ts:1;
x_t = sin(2*pi*500*t) + sin(2*pi*3000*t);


S_Rate = 10000;
Nyquist = S_Rate/2;
Cutoff_Freq = 2000/Nyquist;
Pass_Ripple = 1;  %Assign to delta rp
Stop_Atten = 40;  %Assign to delta rs
N = 6;
[b1,a1] = butter(N,Cutoff_Freq,'low');
[b2,a2] = cheby1(N,Pass_Ripple,Cutoff_Freq,'low');
[b3,a3] = cheby2(N,Pass_Ripple,Cutoff_Freq,'low');
[b4,a4] = ellip(N,Pass_Ripple,Stop_Atten,Cutoff_Freq,'low');


figure;
subplot(4,2,1)
plot(x_t);
title("input");
xlabel("N(samples)");
ylabel("Signal");
y1=filter(b1,a1,x_t);
axis([0 100 -2 2])

subplot(4,2,2);
plot(y1);
axis([0 100 -2 2])
title("Butterworth output");
xlabel("N(samples)");
ylabel("Signal");

subplot(4,2,3)
plot(x_t);
title("input");
xlabel("N(samples)");
ylabel("Signal");
y2=filter(b2,a2,x_t);
axis([0 100 -2 2])

subplot(4,2,4);
plot(y2);
axis([0 100 -2 2])
title("Cheby1 output");
xlabel("N(samples)");
ylabel("Signal");

subplot(4,2,5)
plot(x_t);
title("input");
xlabel("N(samples)");
ylabel("Signal");
y3=filter(b3,a3,x_t);
axis([0 100 -2 2])

subplot(4,2,6);
plot(y2);
axis([0 100 -2 2])
title("Cheby2 output");
xlabel("N(samples)");
ylabel("Signal");


subplot(4,2,7)
plot(x_t);
title("input");
y4=filter(b4,a4,x_t);
axis([0 100 -2 2])
xlabel("N(samples)");
ylabel("Signal");

subplot(4,2,8);
plot(y4);
axis([0 100 -2 2])
title("Ellip output");
xlabel("N(samples)");
ylabel("Signal");








