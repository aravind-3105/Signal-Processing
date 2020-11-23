adsr = [0.2,0.2,0.7,0.4,0.2];
N = 5;
k = 1:N;
A = 1./(k.^2);  %Amplitude
A = A';
P = zeros(N,1); %PHASE
fs = 10000;

F_notes = 50:5:100;  %Frequency
td_notes = ones(size(F_notes)); %DURATION of each

xt = synthesizer(A,F_notes,P,adsr,td_notes,fs);%generating sound
soundsc(xt,fs);%playing sound
