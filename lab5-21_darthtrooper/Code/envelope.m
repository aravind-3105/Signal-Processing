%creating ADSR envelope
function [t_env,env] = envelope(a,d,s,sd,r,fs)
% For each portion of the note, determine the corresponding piece of
% time vector and envelope.
% Attack: amplitude linearly increases from 0 to 1 in ‘a’ seconds
tattack = 0:1/fs:a;
env = tattack/a;
t_env = tattack;
% Decay: amplitude linearly decreases from 1 to ‘s’ in ‘d’ seconds
tdecay = (a+1/fs):1/fs:(a+d);
t_env = [t_env, tdecay];
env = [env, (((s-1)/d)*(tdecay-a) + 1)];
% Sustain: amplitude stays at ‘s’ for ‘sd’ seconds
tsustain = (a+d+1/fs):1/fs:(a+d+sd);
t_env = [t_env, tsustain];
envsustain = s*ones(size(tsustain));
env = [env, envsustain];
% Release: amplitude linearly decreases from ‘s’ to 0 in ‘r’ seconds
trelease = (a+d+sd+1/fs):1/fs:(a+d+sd+r);
t_env = [t_env, trelease];
env = [env, ((-s/r)*(trelease - (a+d+sd+r)))];
end