fs = 10000; %Sampling frequency
td = 2;  %duration of x(t)
N=2; %Length of vector
A = 0.5.*ones(N,1); %Ampkitude
P = 0.*ones(N,1);  %Phase
F1 = [440,480];  %Frequencies of sinusoids
F2 = [0,0];
b2 = SumOfSines(A,F1,P,td,fs);
z2 = SumOfSines(A,F2,P,td,fs);
x3n = [b2,z2,b2,z2,b2,z2,b2,z2];
sound(x3n,fs);
plot(x3n);
xlabel("t");
ylabel("x3[n]");
title("Sum Of Sines");
