%initializing required values
td = 1;
fs = 10000;
fo = 50;
N = 5;
P = zeros(N,1);
t = 0:(1/fs):td;



subplot(2,2,1)
k = 1:N;
A = 1./(k);
A =A';
xt = harmonics(A,fo,P,td,fs);
plot(t(:,1:500),xt(:,1:500));
xlabel("t");
ylabel("a_k = 1/k");


subplot(2,2,2)
k = 1:N;
A = 1./(k.^2);
A =A';
xt = harmonics(A,fo,P,td,fs);
plot(t(:,1:500),xt(:,1:500));
xlabel("t");
ylabel("a_k = 1/k^2");


subplot(2,2,3)
k = 1:N;
A = sin(pi*k/N);
A =A';
xt = harmonics(A,fo,P,td,fs);
plot(t(:,1:500),xt(:,1:500));
xlabel("t");
ylabel("a_k = sin(pi * k / N)");


subplot(2,2,4)
k = 1:N;
A = cos(pi*k/N);
A =A';
xt = harmonics(A,fo,P,td,fs);
plot(t(:,1:500),xt(:,1:500));
xlabel("t");
ylabel("a_k = cos(pi * k / N)");

