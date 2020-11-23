%initializing required values
N = 5;
M = 5;

F_notes = 50 + 50*rand(1,M);  %Frequency
td_notes = 0.5 + round(rand(1,M),2);  %DURATION

k = 1:N;
A = 1./(k.^2);  %Amplitude

P = zeros(1,N);  %PHASE
fs = 10000; %Sampling freq
adsr = [0.2,0.2,0.7,0.4,0.2];


xt = synthesizer(A',F_notes,P',adsr,td_notes,fs);%generating sound
soundsc(xt,fs);%playing sound
