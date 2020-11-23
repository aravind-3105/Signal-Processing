%Case 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Case 1: N = 5
N = 20;
n = 0:N-1;
x = [1];
for p = 1:(N-1)
x = [x;(0.9)^(p)];
end
X = directdft(x);

figure;
subplot(2,2,1);
plot(x);
title("Input signal")
xlabel("n");

subplot(2,2,2);
plot(abs(X));
title("DFT output");
xlabel("n");

subplot(2,2,3)
plot(angle(X));
title("DFT output phase ");
xlabel("n");

subplot(2,2,4)
X_f = fft(x);
plot(abs(X_f));
title("FFT");
xlabel("n");