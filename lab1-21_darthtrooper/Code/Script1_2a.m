% define relevant parameters
T=1; %Time Period
N=10;%No. of fourier coefficients
a = -0.25;
b = 0.25;
% define relevant expressions
syms t;
xt = 1/4-abs(t);% triangle wave
% function call to find FS coefficients
A = fourierCoeff(N,T,t,xt,a,b);
t=-0.5:0.01:0.5;
x = partialfouriersum(A,T,t); %Reconstruction of the triangular wave using FS coefficients
plot(t,real(x));
xlabel('t');
ylabel('x(t)')
grid on;
