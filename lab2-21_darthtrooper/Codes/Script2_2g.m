%Parameters
T = 2 * pi;
A = [1/2,(-1/2)*1i,0,0,0,(1/2)*1i,1/2]; %When manually calculated these are the values obtained. the calculations are present in pdf file
t = (-2*T):0.01:(2*T);
xt = partialfouriersum(A,T,t);
F = -3:3; %Refers to the fourier coefficients 

%Reconstructed plot
subplot(2,2,1);
plot(t,xt);
title('Reconstructed x(t)=cos(3t)+sin(2t)');

%Low pass filter output for wc=2.5
subplot(2,2,2);
wc = 2.5;
B1 = LowPass(A,F,wc);
x1t = partialfouriersum(B1,T,t);
plot(t,x1t);
title('Low Pass Filter');
xlabel('t');
ylabel('x(t)');


%High pass filter output for wc=2.5
subplot(2,2,3);
B2 = HighPass(A,F,wc);
x2t = partialfouriersum(B2,T,t);
plot(t,x2t);
title('High Pass Filter');
xlabel('t');
ylabel('x(t)');

%Non ideal filter output
subplot(2,2,4);
G = 1;
a = 1;
B3 = NonIdeal(A,F,G,a);
x3t = partialfouriersum(B3,T,t);
plot(t,x3t);
title('NonIdeal Filter');
xlabel('t');
ylabel('x(t)');
