%Variable initialisation for calculating the FS Coefficients
T=1; %Time Period
syms t; %Symbolic variable to hold the experssion
xt = t;    %Creates the function
N=10;   %No. of coefficients to be calculated
a=-0.25; %Left limit
b=0.25;  %Right limit 
% function call to find FS coefficients
F = fourierCoeff(N,T,t,xt,a,b);    %Function returns the fourier coefficients
%Plotting the obtained coefficients
figure; 
plot(F,'*');  %Complex coefficients will be obtained to the odd function
grid on;
xlabel("a_k (Real Part)")
ylabel("a_k (Complex Part");
%List the coefficients obtained
disp(F);



%Answer for 1.4(c) of b part
    %As the function x(t) is a odd function, the real part of the FS
    %coefficients is 0, leaving being only the complex part which can be seen
    %in the graph. 