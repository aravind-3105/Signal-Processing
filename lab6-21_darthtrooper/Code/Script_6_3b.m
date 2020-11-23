w = -10:0.01:10;
x1 = [1/3,1/3,1/3];
x2 = [-1/4,1/2,-1/4];

%Part 1 
N0 = 2;

X = DTFT(x1,N0,w);
subplot(2,1,1);
plot(w,abs(X));
title('y[n] = 1/3*(x[n+1]+x[n]+x[n-1]) ');
ylabel("Magnitude");
xlabel("Frequency");
subplot(2,1,2);
plot(w,angle(X));
ylabel("Phase");
xlabel("Frequency");

%Part 2

N0 = 1;
X = DTFT(x2,N0,w);
figure;
subplot(2,1,1);
plot(w,abs(X));
title('y[n] = 1/4*(2x[n]-x[n+1]-x[n-1]) ');
ylabel("Magnitude");
xlabel("Frequency");
subplot(2,1,2);
plot(w,angle(X));
ylabel("Phase");
xlabel("Frequency");
