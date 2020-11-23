[x,Fs]=audioread('sp.wav');
sound(x,Fs);  %Play sound
pause(2);     % Pause
a=-0.5;       %Left Limit
b=0.5;        %Right Limit
L=8;          %Quantisation level
s=(b-a)/L;    %Number of partitions 
y=quant(x,L,a,b);  %Obtained quantised values that points to mid point of the level.
sound(y,Fs);

for bb = 1:8  %loop runs for 8 bit levels
    pause(2);
    disp(bb); %Display Bits value
    L=2^(bb);  %L = 2,4,8,16,32,64,128,256
    s=(b-a)/L;
    y=quant(x,L,a,b);
    sound(y,Fs);   
end

