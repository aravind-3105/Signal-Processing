%Case 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Case 1: N = 20
N = 20;
w0 = 3*pi/10;
x = [sin(w0 * (0-1))];
for n = 1:(N-1)
x = [x;sin(w0 * (n-1))];
end

X = directdft(x);
figure;
subplot(2,2,1);
plot(x)
title("Input signal")

subplot(2,2,2);
plot(abs(X))
title("DFT output");

subplot(2,2,3)
plot(angle(X))
title("DFT output phase ");

subplot(2,2,4)
X_f = fft(x);
plot(abs(X_f))
title("FFT");


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Case 2: 
N = 20;
w0 = 3*pi/10;
x = [cos(w0 * (0-2))];
for n = 1:(N-1)
x = [x;cos(w0 * (n-2))];
end

X = directdft(x);
figure;
subplot(2,2,1);
plot(x)
title("Input signal")

subplot(2,2,2);
plot(abs(X))
title("DFT output");

subplot(2,2,3)
plot(angle(X))
title("DFT output phase ");

subplot(2,2,4)
X_f = fft(x);
plot(abs(X_f))
title("FFT");


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Case 3: 
N = 20;
w0 = 3*pi/10;
x = [exp(1i * w0 * (0-1))];
for n = 1:(N-1)
x = [x;exp(1i * w0 * (n-3))];
end

X = directdft(x);
figure;
subplot(2,2,1);
plot(x)
title("Input signal")

subplot(2,2,2);
plot(abs(X))
title("DFT output");

subplot(2,2,3)
plot(angle(X))
title("DFT output phase ");

subplot(2,2,4)
X_f = fft(x);
plot(abs(X_f))
title("FFT");