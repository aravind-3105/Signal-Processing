%Case 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Case 1: N = 20
N = 20;
w0 = 3*pi/10;
x = [0];
for n = 1:(N-1)
x = [x;sin(w0 * n)];
end

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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Case 2: 
N = 20;
w0 = 3*pi/10;
x = [1];
for n = 1:(N-1)
x = [x;cos(w0 * n)];
end

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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Case 3: 
N = 20;
w0 = 3*pi/10;
x = [exp(1i * w0 * 0)];
for n = 1:(N-1)
x = [x;exp(1i * w0 * n)];
end

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