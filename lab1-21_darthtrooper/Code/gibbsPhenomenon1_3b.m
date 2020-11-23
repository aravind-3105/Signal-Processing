%Defining Parameters for calculating FS coefficients
T=1;
a = -1;
b = 1;
T1=0.1;
syms t;
syms xt(t);
N=100*T;
syms t;
xt =piecewise(t<-T1,0,-T1<=t<=T1,1,t>T1,0); %Square Wave
FS_idx = -N:N;
% Function call to find FS coefficients
F = fourierCoeff(N,T,t,xt,a,b);
% Plot the graph
figure; 
stem(FS_idx,F); 
grid on;

%The fourier series coefficients for 1.3a are calculated here with the
%values T=1, T1=0.1 and N=100
%The Stem Graph of the resultant fourier coefficients is uploaded to the 
%Result folder as: gibbsGraph1
%The Stem Graph for T=10,N=1000 is also in the Result folder as gibbsGraph2 

