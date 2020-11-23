function [c1,c2] = dftconv(x1,x2)
len_1 = length(x1);
len_2 = length(x2);
%N-Length FFTs
X1 = fft(x1);
X2 = fft(x2);
C1 = X1 .* X2;
c1 = ifft(C1);
%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%
N = len_1 + len_2 - 1;
X1_pad = fft(x1,N);
X2_pad = fft(x2,N);
C2 = X1_pad .* X2_pad;
c2 = ifft(C2);
end

