% define relevant parameters
T=1; %Time Period
N=10;%Number of fourier coefficients
a=-0.25; %Left Limit
b=0.25;  %Right Limit
syms t;
xt = 0.25-abs(t); %Triangular Wave 

A = fourierCoeff(N,T,t,xt,a,b);  %Obtain Fourier Series coefficients
t=-0.5:0.01:0.5;   %The value of t is redefined to avoid facing issues while plotting as t was a symbolic variable before.
x = partialfouriersum(A,T,t); %this is the reconstructed wave

%Construct the triangular wave 
M = length(t); K = floor(M/4);
xt = zeros(M,1);
nz_idx = K+1:3*K+1; % indices where xt is non-zero
xt(nz_idx) = 0.25 - abs(t(nz_idx));


mae=max(abs(xt-x),[],'all');  %Calculates the maximum absolute error by comparing each and every point of both reconstructed and original wave
disp('MAE is : ');
disp(mae);  
abserror=abs((xt-x)); % absolute error of each point
sqrerror=abserror.*abserror; % square the absolute value for obtaining MSE
errorsqrsum=sum(sqrerror,'all'); %Summation of all the absolute squared errors
MSE = errorsqrsum/numel(sqrerror) ; %Division by the total number of values
disp('MSE is : ');
disp(MSE);