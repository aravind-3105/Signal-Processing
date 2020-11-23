%%Code to express both low-pass and high-pass filters as a sum of two all
%%pass filters
%N = Order of the signal( Odd Value) 
N = 9;  
pass_ripple = 0.5;  
stop_ripple = 100;
%Passband frequency in normalised form w_p = 0.5
wc=0.5;  

%Input parameters are order,pass-ripple,stop-ripple, passband frequency
%Output Paramaters are the transfer function coefficeints from elliptic
%filter design
[b,a] = ellip(N,pass_ripple,stop_ripple,wc);  

%tf2ca converts the transfer to coupled all-pass
[a_0denom,a_1denom]=tf2ca(b,a);                                 
% Frequency response of the A0(z) allpass filter is obtained by flipping
% the coeffcients obtained
a_0num = fliplr(a_0denom);
a_1num = fliplr(a_1denom);
[A0,w] = freqz(a_0num,a_0denom);                      
[A1,w] = freqz(a_1num,a_1denom);                     
% Results
Low_pass_Filter = (A0+A1)/2;
High_pass_Filter = (A0-A1)/2;
%Plots
figure();
plot(w/pi,[abs(Low_pass_Filter) abs(High_pass_Filter)]);
xlabel('Normalised Frequency'); %Corresponds to w/pi
ylabel('Magnitude');
ylim([-1 2]);
grid on;
title('Magnitude of individual filters');
legend('Low-pass','High-pass');

figure();
plot(w/pi,[20*log10(abs(Low_pass_Filter)) 20*log10(abs(High_pass_Filter))]);
xlabel('Normalised Frequency');
ylabel('Magnitude');
ylim([-150 5]);
grid on;
title('Magintude in db');
legend('Low-pass','High-pass');

figure();
plot(w/pi,abs(Low_pass_Filter+High_pass_Filter));
xlabel('Normalised Frequency');
ylabel('Sum of response');
ylim([-1 2]);
grid on;
title('Sum of HP and LP freq response');

figure();
plot(w/pi,abs(Low_pass_Filter).^2+abs(High_pass_Filter).^2);
xlabel('Normalised Frequency');
ylabel('Magnitude');
ylim([-1 2]);
grid on;
title('Sum of magnitudes of low-pass and high-pass to show power complementary pair');