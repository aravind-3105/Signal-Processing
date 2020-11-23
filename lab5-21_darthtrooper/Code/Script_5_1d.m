%Common Parameters
fs = 10000; %Sampling frequency
N=2; %Length of vector
A = 0.5.*ones(N,1); %Amplitude
P = 0.*ones(N,1);  %Phase


%Specific Values for x1[n]
td1 = 4;  %duration of x(t)
t1 = 0:1/fs:td1;
F1 = [350,440];  %Frequencies of sinusoids
x1n = SumOfSines(A,F,P,td1,fs);
%sound(x1n,fs);
subplot(3,1,1)
plot(t1(:,1:500),x1n(:,1:500));
xlabel("n");
ylabel("x1[n]");
title("Sum Of two sinusoids");


%Specific Values for x2[n]
td2 = 0.5;  %duration of z1(t) and b1(t)
t2 = 0:1/fs:td2;
F1 = [480,620];  %Frequencies of sinusoids
F2 = [0,0];  %Zeto signal
x1t = SumOfSines(A,F1,P,td2,fs);  %b1 signal
x2t = SumOfSines(A,F2,P,td2,fs);  %z1 signal
x2n = [x1t,x2t,x1t,x2t,x1t,x2t,x1t,x2t]; %Making comined alternating copies
%sound(x2n,fs);
subplot(3,1,2)
plot(t2(:,1:500),x2n(:,1:500));
xlabel("n");
ylabel("x2[n]");
title("Alternating copies of b1,z1");


%Specific Values for x3[n]
td3 = 2;  %duration of x(t)
t3 = 0:(1/fs):td3;
F1 = [440,480];  %Frequencies of sinusoids
F2 = [0,0];      %Zero Signal
b2 = SumOfSines(A,F1,P,td,fs);
z2 = SumOfSines(A,F2,P,td,fs);
x3n = [b2,z2,b2,z2,b2,z2,b2,z2]; % Making alternating copies
%sound(x3n,fs);
subplot(3,1,3)
plot(t3(:,1:500),x3n(:,1:500));
xlabel("n");
ylabel("x3[n]");
title("Alternating copies of b2,z2");



