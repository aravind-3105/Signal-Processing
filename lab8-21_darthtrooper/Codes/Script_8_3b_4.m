%Case 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Case 1: N = 10
N = 10;
L = 1;
x = [1;zeros(N-L,1)];
X = directdft(x);

figure;
subplot(2,2,1);
plot(x)
title("Input signal")
xlabel("n");

subplot(2,2,2);
plot(abs(X))
title("DFT output");
xlabel("n");

subplot(2,2,3)
plot(angle(X))
title("DFT output phase ");
xlabel("n");

subplot(2,2,4)
X_f = fft(x);
plot(abs(X_f))
title("FFT");
xlabel("n");