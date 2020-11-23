%Question 3.1 Part 1
%Plotting function sin(5*pi*t)+cos(10*pi*t)
t_fine=0:0.001:2;
xt=sin(5*pi*t_fine)+cos(10*pi*t_fine);
subplot(2,2,1);
plot(t_fine,xt);

%Question 3.1 Part 2
Ts=0.1;
t_sample=0:Ts:2;
subplot(2,2,2);
xt1=sin(5*pi*t_sample)+cos(10*pi*t_sample);
stem(t_sample,xt1);
