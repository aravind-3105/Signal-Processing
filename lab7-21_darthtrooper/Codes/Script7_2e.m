%Parameters
p=0.5;
b = [1 -1/p];
a = [1 -p];
n = 1001;
%Pole-Zero Plot
figure;
zplane(b,a);
title("Plot-Zero Plot for p=0.5"); 
%Frequency Response
figure;
freqz(b,a,n);
title("Magnitude response for p=0.5"); 
%Impulse Response
figure;
[h,t] = impz(b,a);
plot(t, h);
title("Impulse Response for p=0.5"); 