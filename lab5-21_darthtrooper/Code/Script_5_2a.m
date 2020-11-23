td = 1;
fs = 10000;
fo = 50;
N = 5;
P = zeros(N,1);

k = 1:N;
A = 1./k;
A =A';

xt = harmonics(A,fo,P,td,fs);
soundsc(xt,fs);