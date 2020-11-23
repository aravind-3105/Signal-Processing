td = 1;
fs = 10000;
fo = 50;

N_total = [10,15];
fo_total= [100,150,200];

for N = N_total
    for fo = fo_total
    pause(3); %Stop for 3 seconds
    P = zeros(N,1);
    k = 1:N;
    A = 1./(k);
    A =A';
    xt = harmonics(A,fo,P,td,fs);
    soundsc(xt,fs);
    end
end