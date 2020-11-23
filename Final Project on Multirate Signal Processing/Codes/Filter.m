N = 32; %Filter Length
n=0:N-1;
fp = 0.43;   % Passband Edge for Lowpass Filter
%1-fp = 0.57 % Passband Edge for Highpass Filter

[h0,h1,g0,g1] = firpr2chfb(N-1,fp);
%firpr2chfb is used to generate a 2-Channel FIR Filter Bank with Perfect
%Reconstruction

%h0 is a Lowpass Analysis Filter
%g0 is a Lowpass Synthesis Filter
%h1 is a Highpass Analysis Filter
%g1 is a Highpass Synthesis Filter

figure (1)
subplot(2,2,1)
stem(n,h0)
title('Impulse responses for h_0[n]')
subplot(2,2,2)
stem(n,h1)
title('Impulse responses for h_1[n]')
subplot(2,2,3)
stem(n,g0)
title('Impulse responses for g_0[n]')
subplot(2,2,4)
stem(n,g1)
title('Impulse responses for g_1[n]')


figure (2)
subplot(2,2,1)
zplane(h0,1)
title('Pole-zero plot for H_0(z)')
subplot(2,2,2)
zplane(h1,1)
title('Pole-zero plot for H_1(z)')
subplot(2,2,3)
zplane(g0,1)
title('Pole-zero plot for G_0(z)')
subplot(2,2,4)
zplane(g1,1)
title('Pole-zero plot for G_1(z)')


[H0,f0]=freqz(h0,1,1024,2); %Frequency Response of h0
[H1,f1]=freqz(h1,1,1024,2); %Frequency Response of h1
[G0,f0]=freqz(g0,1,1024,2); %Frequency Response of g0
[G1,f1]=freqz(g1,1,1024,2); %Frequency Response of g1

figure (3)
plot(f0,20*log10(abs(H0)),f1,20*log10(abs(H1))); grid
title('Analysis Filter Bank')
ylabel('Gain, dB')
axis([0,1,-60,2])

figure (4)
plot(f0,20*log10(abs(G0)),f1,20*log10(abs(G1))); grid
title('Synthesis Filter Bank')
ylabel('Gain, dB')
axis([0,1,-60,2])

figure(5)
t = (conv(h0,g0)+conv(h1,g1))/2;
stem(0:2*(N-1),t)
title('Impulse Response of the Overall Transfer Function')
xlabel('n'), ylabel('t[n]')
axis([0,2*(N-1),-0.2,1.1])
%figure(4)
%freqz(h0,1,1024,2);
%figure(5)
%freqz(h1,1,1024,2);
%figure(6)
%freqz(g0,1,1024,2);
%figure(7)
%freqz(g1,1,1024,2);