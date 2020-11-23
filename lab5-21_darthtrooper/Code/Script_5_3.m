fs=10000;
N=5;
td=1;
A=1;
for i=2:N
    A=[A,1/i]; 
end
f0=50;
xt = harmonics(A,f0,P,td,fs);

[t_env1,env1]=envelope(0.2,0.2,0.7,0.4,0.2,fs);
[t_env2,env2] = envelope(0.1,0.3,0.9,0.4,0.2,fs);

subplot(3,1,1)
plot(xt);
xlabel('t');
ylabel('xt');

subplot(3,1,2)
plot(env1);
xlabel('t_env');
ylabel('env');

subplot(3,1,3)
plot(xt.*env1);
xlabel('t_env');
ylabel('xt.*env1');

figure;
subplot(3,1,1)
plot(xt);
xlabel('t');
ylabel('xt');

subplot(3,1,2)
plot(env2);
xlabel('t_env');
ylabel('env');

subplot(3,1,3)
plot(xt.*env2);
xlabel('t_env');
ylabel('xt.*env1');


soundsc(xt.*env1,fs);
pause(4);
soundsc(xt,fs);