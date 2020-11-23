MAE = zeros(1,100);
MSE = zeros(1,100);
for N = 1:100   
    T=1; %Time Period
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

    abserror=abs((xt-x)); % absolute error of each point
    MAE(N)=max(abserror,[],'all');
    sqrerror=abserror.*abserror; % square the absolute value for obtaining MSE
    MSE(N)=sum(sqrerror,'all')/numel(sqrerror); %Summation of all the absolute squared errors and divide by total number of elements
   
end
n = 1:1:100;
figure;
plot(n,ma,n,MSE); 
legend('Maximum Absolute Error','Mean Squared Error');
xlabel('N');
ylabel('Error Values');
grid on;
