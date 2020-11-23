%Variable initialisation for calculating the FS Coefficients
T=1; %Time Period
N=10;   %No. of coefficients to be calculated
a=-0.25; %Left limit
b=0.25;  %Right limit 
syms t; 
xt = abs(t);    %Creates the function
% function call to find FS coefficients
F = fourierCoeff(N,T,t,xt,a,b);    %Function returns the fourier coefficients
%Plotting the obtained coefficients
figure; 
plot(F,"*"); 
grid on;
xlabel("k")
ylabel("a_k");
%List the coefficients obtained
disp(F);



%Answer for 1.4(c) of a part
    %As the function x(t) is a even function and symmetry, the complex part of the FS
    %coefficients is 0, leaving being only the real part which can be seen
    %in the graph.  