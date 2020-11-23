b = [1];
p = -0.8;
a = [1, p];
zplane(b,a);
title("Pole-Zero Plot for p = -0.8");
xlabel("Real");
ylabel("Imaginary");
n = 1001;
figure;
[h,t] = impz(b,a);
plot(t, h);
title("Impulse Response for p = -0.8");

figure;
freqz(b,a,n);
title("Frequency Magnitude Response for p = -0.8");

figure;
p = 0.1;
a = [1 p];
[h,t] = impz(b,a);
plot(t, h);
title("Impulse Response for p = 0.1");

figure;
freqz(b,a,n);
title("Frequency Magnitude Response for p = 0.1");

figure;
zplane(b,a);
title("Pole-Zero Plot for p = 0.1");
xlabel("Real");
ylabel("Imaginary");
