w = -10:0.01:10;
n = 0:500;

%First part
b = 0.1;
N0 = 1;
a = b;
x1 = (a.^n);
X1 = DTFT(x1,N0,w);
a = -b;
x2 = (a.^n);
X2 = DTFT(x2,N0,w);


figure;
subplot(2,2,1); 
plot(n,x1);
title("A = B (b=0.1)");
ylabel("Time-Domain Signal ");
subplot(2,2,3); 
plot(w,abs(X1));
ylabel("Magnitude");
title("A = B ");

subplot(2,2,2); 
plot(n,x2);
title("A = - B (b=0.1)");
ylabel("Time-Domain Signal ");
subplot(2,2,4); 
plot(w,abs(X2));
ylabel("Magnitude");
title("A = - B");



%Second part
b = 0.5;
N0 = 1;
a = b;
x1 = (a.^n);
X1 = DTFT(x1,N0,w);
a = -b;
x2 = (a.^n);
X2 = DTFT(x2,N0,w);


figure;
subplot(2,2,1); 
plot(n,x1);
title("A = B (b=0.5)");
ylabel("Time-Domain Signal");
subplot(2,2,3); 
plot(w,abs(X1));
ylabel("Magnitude");
title("A = B");

subplot(2,2,2); 
plot(n,x2);
title("A = - B  (b=0.5)");
ylabel("Time-Domain Signal");
subplot(2,2,4); 
plot(w,abs(X2));
ylabel("Magnitude");
title("A = - B");



%Third part
b = 0.9;
N0 = 1;
a = b;
x1 = (a.^n);
X1 = DTFT(x1,N0,w);
a = -b;
x2 = (a.^n);
X2 = DTFT(x2,N0,w);


figure;
subplot(2,2,1); 
plot(n,x1);
title("A = B (b=0.9)");
ylabel("Time-Domain Signal");
subplot(2,2,3); 
plot(w,abs(X1));
ylabel("Magnitude");
title("A = B");

subplot(2,2,2); 
plot(n,x2);
title("A = - B  (b=0.9)");
ylabel("Time-Domain Signal");
subplot(2,2,4); 
plot(w,abs(X2));
ylabel("Magnitude");
title("A = - B");