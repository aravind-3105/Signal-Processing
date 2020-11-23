function y = partialfouriersum(A,T,t)
y = zeros(size(t));
wo=(2*pi)/T; % fundamental frequency
N = (length(A)-1)/2;
for k = -N: N
   y = y + A(k+N+1)*exp(1i*k*wo*t); 
end
end