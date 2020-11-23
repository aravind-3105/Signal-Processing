t_fine = 0:0.001:2;%Mimic continous time
subplot(2,2,1);
hold on;
Ts = 0.1;%sampling rate
t_n = 0:Ts:2; %times where sampling occurs
xn = sin(5*pi*t_n); %sampled signal
stem(t_n,xn); %plotting sampled signal
n = 0:2/Ts; %integer locations of samples xn
x_1 = sinc_interp(n,xn,Ts,t_fine); %reconstruction

%Plotting
plot(t_fine,x_1);
xlabel('time');
ylabel('Ts = 0.1');
hold off;
legend('samples','reconst.');


subplot(2,2,2);
Ts = 0.2;
hold on;
t_n = 0:Ts:2; 
xn = sin(5*pi*t_n); 
stem(t_n,xn); 
n = 0:2/Ts; 
x_2 = sinc_interp(n,xn,Ts,t_fine); 

plot(t_fine,x_2);
xlabel('time');
ylabel('Ts = 0.2');
hold off;
legend('samples','reconst.');


subplot(2,2,3);
Ts = 0.3;
hold on;
t_n = 0:Ts:2;
xn = sin(5*pi*t_n); 
stem(t_n,xn); 
n = 0:2/Ts; 
x_3 = sinc_interp(n,xn,Ts,t_fine);

plot(t_fine,x_3); 
xlabel('time');
ylabel('Ts = 0.3');
hold off;
legend('samples','reconst.');


subplot(2,2,4);
hold on;
Ts = 0.4;
t_n = 0:Ts:2; 
xn = sin(5*pi*t_n);
stem(t_n,xn);
n = 0:2/Ts;
x_4 = sinc_interp(n,xn,Ts,t_fine);

plot(t_fine,x_4); 
xlabel('time');
ylabel('Ts = 0.4');
hold off;
legend('samples','reconst.');