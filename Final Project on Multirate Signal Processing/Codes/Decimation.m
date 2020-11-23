function  Decimation(fm,fs,T,M)
%Sinusoidal Input Frequency = fm
%Initial Sampling Frequency = fs
%Legnth of Signal(in secs) = T
%Decimation factor = M
rate = M;
dt=1/fs;
%Time array
t=dt:dt:T;
len=length(t);
 
y=cos(2*pi*fm*t);

y_deci=decimate(y,M);  %MATLAB function to decimate using a Chebyshev Type-1 IIR Filter with order 8.

figure;
subplot(3,1,1);
plot(t,y);
grid;
xlabel('Time');
ylabel('y(t)');
title('Sinusoid Input before sampling');

subplot(3,1,2);
stem(y);
grid;
xlabel('Samples(n)');
ylabel('y[n]');
title('After sampling before decimation');

subplot(3,1,3);
stem(y_deci);
grid;
xlabel('Modified Sample Range(n/M)');
ylabel('y_{deci}[n]');
str = ['After decimation with decimation factor =',num2str(rate)];
title(str);