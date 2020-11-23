%generates note of frequency fo
function xt = harmonics(A,fo,P,td,fs)
k = 1:length(A);
k = k';
Fo = fo*k;
xt = SumOfSines(A,Fo,P,td,fs);
end