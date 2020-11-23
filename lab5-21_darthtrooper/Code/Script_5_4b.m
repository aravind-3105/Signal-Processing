%initializing required values
adsr = [0.3,0.2,0.7,0.3,0.2];
N = 5;
k = 1:N;
A = 1./(k.^2);  %Amplitude

F_notes = 100:-10:40;  %Frequency
td_notes = ones(size(F_notes));  %DURATION

P = zeros(1,N);  %PHASE
fs = 10000;

xt = synthesizer(A',F_notes,P',adsr,td_notes,fs);%generating sound
soundsc(xt,fs);%playing sound


