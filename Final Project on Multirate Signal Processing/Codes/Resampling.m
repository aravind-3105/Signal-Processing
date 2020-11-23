fs=10;%Sampling Frequency = fs
t=0:1/fs:1-1/fs;

figure(1);

xs=sin(2*pi*t);%Input Signal
stairs(t,xs);%Input Plot

up=4;
dn=1;
f_rs=fs*up/dn;%Resampled Frequency
t_rs=0:1/f_rs:1-1/f_rs;
[y,by]=resample(xs,up,dn); %Resampling xs at up/dn times the sampling rate

hold on;
stem(t_rs,y);%Resampled Plot
hold off;
legend("Input","Resampled");
title("Sin(2*Pi*T) Resampled at 4 times the Sampline rate");
figure(2);
freqz(by);%Frequency Response of Anti-Aliasing Filter