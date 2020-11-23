N=30;
f=0.05;
n=0:N-1;
x=sin(2*pi*f*n);
%Interpolation by factor of I=2  
I=2;
x_upsample=upsample(x,I);
x_interpol=interp(x,I);
figure('name','Interpolation by factor I=2','NumberTitle','off');
subplot(3,1,1);
stem(n,x);
xlabel('n');
ylabel('x(n)');
title('Original Signal');
subplot(3,1,2);
stem(0:N*I-1,x_upsample);
xlabel('n');
ylabel('x_{upsample}(n)');
title('Upsampled Signal');
subplot(3,1,3);
stem(0:N*I-1,x_interpol);
xlabel('n');
ylabel('x_{interpol}(n)');
title('Interpolated Signal');