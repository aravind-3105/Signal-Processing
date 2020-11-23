function X = directdft(x)
N = length(x);
k = (0:N-1);
exponent = k' * k;
W_n_exp = exp(-1i*2*pi/N).^(exponent);
X = W_n_exp * x;
end