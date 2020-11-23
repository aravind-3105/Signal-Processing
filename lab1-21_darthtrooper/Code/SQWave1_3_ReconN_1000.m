%Parameters
T=1;
T1=0.1;
syms t;
syms xt(t);
N=1000;
syms t;
xt =piecewise(t<-T1,0,-T1<=t<=T1,1,t>T1,0);
% function call to find FS coefficients
A = fourierCoeff(N,T,t,xt,-0.5,0.5);
yt=partialfouriersum(A,T,t);
% Graph plotting
hold on;
fplot(yt,[-0.5 0.5]); %Reconstructed Wave
fplot(xt,[-0.5 0.5]); %Original Square Wave
grid on;
hold off;
legend('Reconstructed','Original');
xlabel('t');
ylabel('x(t)');
text(0.3,0.6,"N = "+N);
%We see that the reconstruction of x(t) is imperfect as the function has 
%overshoots

%But as we increse the value of N, we see the number of overshoots increase 
%but the amount it overshoots decreasing
%Implying that as N increases, the reconstructed function y(t) approaches
%the original function x(t).
%This is called the Gibbs Phenomenon.