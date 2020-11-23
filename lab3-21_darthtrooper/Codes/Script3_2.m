
subplot(2,2,1);
t_fine = 0:0.001:2; %Mimic Continous
x = sin(5*pi*t_fine) + cos(10*pi*t_fine); %Original
plot(t_fine,x); %Plotting original signal

hold on;
Ts = 0.1;%Sampling interval
t_n = 0:Ts:2; %times where sampling occurs
xn = sin(5*pi*t_n) + cos(10*pi*t_n); %sampled signal

%plotting
stem(t_n,xn); %plotting sampled signal
hold off;
legend('original','sample');
xlabel('time');
ylabel('x(t)');

%first reconstuction
subplot(2,2,2);
hold on;
plot(t_fine,x); %Plotting original signal
x_1 = interp1(t_n,xn,t_fine,'previous');
plot(t_fine,x_1);
xlabel('time');
ylabel('zero order hold');
legend('original','sample');
hold off;

%second reconstruction
subplot(2,2,3);
hold on;
plot(t_fine,x); %Plotting original signal
x_2 = interp1(t_n,xn,t_fine,'linear');
plot(t_fine,x_2);
xlabel('time');
ylabel('linear interpolation');
legend('original','sample');
hold off;

%third reconstruction
subplot(2,2,4);
hold on;
plot(t_fine,x); %Plotting original signal
n = 0:2/Ts;
x_3 = sinc_interp(n,xn,Ts,t_fine);
plot(t_fine,x_3);
xlabel('time');
ylabel('sinc interpolation');
legend('original','sample');
hold off;

subplot(2,2,3);
index = (t_fine>=0.5 & t_fine <=1.5);
legend('original','sample');
disp('Maximum Absolute Error:');
%For linear intrpolation
max_linear = max(x_1(index) - x(index));
disp('linear interpolation :');
disp(max_linear);

%For zero hold interpolation
max_zero_hold = max(x_2(index) - x(index));
disp('zero order hold :')
disp(max_zero_hold);

%For sinc interpolation
max_sinc = max(x_3(index) - x(index));
disp('sinc interpolation :')
disp(max_sinc);


