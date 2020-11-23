fs = 10000; %Sampling frequency
td = 4;  %duration of x(t)
N=2; %Length of vector
A = 0.5.*ones(N,1); %Ampkitude
P = 0.*ones(N,1);  %Phase
F = [350,440];  %Frequencies of sinusoids
xt = SumOfSines(A,F,P,td,fs);
sound(xt,fs);
plot(xt);
xlabel("t");
ylabel("x(t)");
title("Sum Of Sines");
