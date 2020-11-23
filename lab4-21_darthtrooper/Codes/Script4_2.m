%function y = quant(x,L,a,b)
a=-1;
b=1;
L=10;
Fo = 10;
Fs = 5000;
Ts = 1/5000;
t_dis = 0:Ts:1; %intervals for sampling
xn = sin(2*pi*Fo*t_dis); %sampled signal x[n]

MAE = [];
SQNR = [];

for b = 1:8
  
   figure; %starting a new figure for the loop
    subplot(3,1,1); 
    xlabel('t');
    ylabel('X[n]'); 
    plot(t_dis,xn); %plotting sampled signal
    
    subplot(3,1,2);
    L = 2^b; %getting total levels
    xq = quant(xn,L,-1,1); %getting quantized signal
    plot(t_dis,xq); %plotting quantized signal
    xlabel('t') ;
    ylabel('X_q[n]'); 

    subplot(3,1,3);
    eq = xn - xq; %Quantisation Error
    MAXb = max(abs(eq(:))); %MAE
    MAE = [MAE,MAXb]; 
    plot(t_dis,eq); 
    xlabel('t') ;
    ylabel('X[n] - X_q[n]'); 
   
    NUM = xn.^2; %Numerator
    DEN = eq.^2; %Denominator
    NUMSUM = sum(NUM(:));
    DENSUM = sum(DEN(:));
    SQNTb = NUMSUM/DENSUM; 
    SQNR = [SQNR, SQNTb]; 
 
end

%MAE ERROR GRAPH
figure;
b = 1:8;
plot(b, MAE); %MAE in y-axis and bits value in x-axis
xlabel('Bits Value') ;
ylabel('Maximum Absolute Error'); 
title('MAE');
figure;
hold on;

plot(b,SQNR);
%SQNR_BOOK = 1.5 * 2^(2b)
SQNR_BOOK = (1.5)*(2.^(2*b));
plot(b,SQNR_BOOK);
title('SQNR COMPARISON');
xlabel('Bits Value') ;
ylabel('SQNR Theory and Practical Comparison');
hold off;

    
    
    