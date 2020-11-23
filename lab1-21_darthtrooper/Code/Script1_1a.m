%Parameters are defined
T=1;
T1=T/4;
N=10;
a=-0.25; %Left limit
b=0.25;  %Right limit
syms t;
xt = 0.25-abs(t);   %Triangular wave function
F = fourierCoeff(N,T,t,xt,a,b);
FS_idx = -N:N;
%Plotting the graph
figure;
stem(FS_idx,F);
xlabel("k");
ylabel("Fourier Coefficients Value");
grid on;
