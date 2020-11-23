%Paramters
T = 2 * pi;
t =  (-2*T):0.01:(2*T);
A1 = [1/2,0,1/2];

wc = 2;
x1t = partialfouriersum(A1,T,t);

%Reconstructed plot
subplot(2,3,1)
plot(t,x1t);
title('Reconstruced Cos(t)');
xlabel('t');
ylabel('x(t)');

%Low pass filter output for wc=2
subplot(2,3,2)
A2 = LowPass(A1,F,wc);
x2t = partialfouriersum(A2,T,t);
plot(t,x2t);
title('LPF wc=2');
xlabel('t');
ylabel('x(t)');

%Low pass filter output for wc=0.5
wc = 0.5;
subplot(2,3,3)
A3 = LowPass(A1,F,wc);
x3t = partialfouriersum(A3,T,t);
plot(t,x3t);
title('LPF wc=0.5');
xlabel('t');
ylabel('x(t)');

%High pass filter output for wc=2
wc = 2;
subplot(2,3,4)
A4 = HighPass(A,F,wc);
x4t = partialfouriersum(A4,T,t);
plot(t,x4t);
title('HPF wc=2');
xlabel('t');
ylabel('x(t)');

%High pass filter output for wc=0.5
wc = 0.5;
subplot(2,3,5)
A5 = HighPass(A,F,wc);
x5t = partialfouriersum(A5,T,t);
plot(t,x5t);
title('HPF wc=0.5');
xlabel('t');
ylabel('x(t)');

%Non Ideal filter output 
G = 1;
a = 1;
subplot(2,3,6)
F = [-1,0,1];
A6 = NonIdeal(A,F,G,a);
x6t = partialfouriersum(A6,T,t);
plot(t,x6t);
title('Non Ideal');
xlabel('t');
ylabel('x(t)');

