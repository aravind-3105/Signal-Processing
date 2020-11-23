b = 1;
p = 0.8;
a = [1 p];
n = 1001;
figure;
freqz(b,a,n)
[H,W] = freqz(b,a,n); 
title("Magnitude Response for n = 1001");