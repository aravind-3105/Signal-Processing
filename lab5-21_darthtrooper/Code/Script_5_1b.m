fs = 10000; %Sampling frequency
td = 0.5;  %duration of z1(t) and b1(t)
N=2; %Length of vector
A = 0.5.*ones(N,1); %Ampkitude
P = 0.*ones(N,1);  %Phase
F1 = [480,620];  %Frequencies of sinusoids
F2 = [0,0];
x1t = SumOfSines(A,F1,P,td,fs);  %b1 signal
x2t = SumOfSines(A,F2,P,td,fs);  %z1 signal
xn = [x1t,x2t,x1t,x2t,x1t,x2t,x1t,x2t]; %Combined
sound(xn,fs);
plot(xn);
xlabel("t");
ylabel("x2[n]");
title("Sum Of Sines");
