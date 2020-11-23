%generates synthesizer notes
function y = synthesizer(A,F_notes,P,adsr,td_notes,fs)
% Initialize output as empty
y = [];
% Loop over the notes
for ii = 1:length(F_notes)
    % scale a,d,sd,r so that they sum to required note duration
    present_index_td = td_notes(ii);

    a = present_index_td*adsr(1);   
    d = present_index_td*adsr(2);
    sd = present_index_td*adsr(4);
    r = present_index_td*adsr(5);
    s = adsr(3);
    
    % Compute the time vector and ADSR envelope for this note
    
    [t,env] = envelope(a,d,s,sd,r,fs);
    % Compute the sum of harmonics for this note
    xt = harmonics(A,F_notes(ii),P,present_index_td,fs);
    % Modulate the sum of harmonics with the envelope
    xte = xt .* env;
    % Add the note to the sequence
    y = [y,xte];
end
end