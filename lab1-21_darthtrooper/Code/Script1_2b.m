% define relevant parameters
T=1; %Time Period
N=5;%Number of fourier coefficients
a=-0.25; %Left Limit
b=0.25;  %Right Limit
syms t;
xt = 1/4-abs(t); %Triangular Wave 

A = fourierCoeff(N,T,t,xt,a,b);  %Obtain Fourier Series coefficients
t=-0.5:0.01:0.5;   %The value of t is redefined to avoid facing issues while plotting as t was a symbolic variable before.
x = partialfouriersum(A,T,t); %this is the reconstructed wave

%Construct the triangular wave 
M = length(t); K = floor(M/4);
xt = zeros(M,1);
nz_idx = K+1:3*K+1; % indices where xt is non-zero
xt(nz_idx) = 0.25 - abs(t(nz_idx));
%PLotting both the reconstructed and original plots to compare
figure; 
hold on;
plot(t,real(x),'--','color','b');
plot(t,real(xt),'color','r'); 
legend('Reconstructed using FS Coefficients', 'Original Wave');
xlabel('t');
ylabel('x(t)');
grid on;
hold off