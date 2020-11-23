%Parameters are defined
T=1;
N=10;   %No. of FS coefficients
a=-0.5; %Left limit
b=0.5;  %Right Limit
syms t;
xt = abs(t);  %Taking another periodic wave function
F = fourierCoeff(N,T,t,xt,a,b);
FS_idx = -N:N;
figure;
stem(FS_idx,F);
xlabel("k");
ylabel("Fourier Coefficients Value");
grid on;
