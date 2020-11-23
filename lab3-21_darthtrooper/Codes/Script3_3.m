t_fine = -10:0.001:10;
xt = 1 - abs(t_fine);

subplot(2,2,1);
Ts = 0.5;
hold on;
t_n = -1:Ts:1; %Time sample
xn = 1 - abs(t_n); %Sampled signal
stem(t_n,xn); %Plot sampled signal
n = -1/Ts:1/Ts; %Position of sample xn
x_1 = sinc_interp(n,xn,Ts,t_fine); %Reconstruction

%plotting
plot(t_fine,x_1);
xlabel('Time');
ylabel('Ts=0.5');
hold off;
legend('Samples','reconstructed');


subplot(2,2,2);
Ts = 0.2;
hold on;
t_n = -1:Ts:1;
xn = 1 - abs(t_n); 
stem(t_n,xn); 
n = -1/Ts:1/Ts; 
x_2 = sinc_interp(n,xn,Ts,t_fine); 

%plotting
plot(t_fine,x_2); 
xlabel('Time');
ylabel('Ts=0.2');
hold off;
legend('Sample','Reconst.');

subplot(2,2,3);
Ts = 0.1;
hold on;
t_n = -1:Ts:1;
xn = 1 - abs(t_n);
stem(t_n,xn); 
n = -1/Ts:1/Ts; 
x_3 = sinc_interp(n,xn,Ts,t_fine); 

%plotting
plot(t_fine,x_3); 
xlabel('time');
ylabel('Ts=0.1');
hold off;
legend('Sample','Reconst.');

subplot(2,2,4);
hold on;
Ts = 0.05;
t_n = -1:Ts:1; 
xn = 1 - abs(t_n); 
stem(t_n,xn);
n = -1/Ts:1/Ts; 
x_4 = sinc_interp(n,xn,Ts,t_fine);

%plotting
plot(t_fine,x_4); 
xlabel('time');
ylabel('Ts=0.05');
hold off;
legend('Sample','Reconst.');