w = -10:0.01:10;
x = [1,0,-1];
N0 = 1;

X = DTFT(x,N0,w);

subplot(2,1,1);
plot(w,abs(X));
ylabel("Magnitude");
xlabel("Frequncy");
title('y[n]=x[n]-x[n-2]');

subplot(2,1,2);
plot(w,angle(X));
ylabel("Phase");
xlabel("Frequncy");

