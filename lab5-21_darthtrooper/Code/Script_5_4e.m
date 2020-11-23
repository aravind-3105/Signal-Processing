%initializing required values
fs = 10000;
adsr = [0.3,0.2,0.7,0.3,0.2];
D=	294;
E=	330;
F=	349;
G=	392;
A=	440;
B=	494;
C=	523;
F_notes = [C,0,C,0,G,0,G,0,A,0,A,0,G,0,0,F,0,F,0,E,0,E,0,D,0,D,0,C,0,0];
Am = [1,0,1,0,1,0,1,0,1,0,1,0,1,0,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,0];

F_notes = [F_notes,0,G,0,G,0,F,0,F,0,E,0,E,0,D,0,0,G,0,G,0,F,0,F,0,E,0,E,0,D,0];
Am = [Am,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0];

F_notes = [F_notes,0,C,0,C,0,G,0,G,0,A,0,A,0,G,0,0,F,0,F,0,E,0,E,0,D,0,D,0,E,0];
Am = [Am,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0];

td_notes = 0.2* ones(size(F_notes));  %As without taking fraction it takes too long 
P = zeros(size(Am));  %Taking no phase difference

xt = synthesizer(Am',F_notes,P',adsr,td_notes,fs);%generating sound
soundsc(xt,fs);%playing 

audiowrite('Audio5_e_Twinkle.wav',xt,fs)


%Replicate twinkle twinkle little star xD