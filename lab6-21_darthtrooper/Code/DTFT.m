function X=DTFT(x,N0,w)
X = zeros(size(w));
for i=1:size(w,2)
    for n = 1:size(x,2)
        X(i) = X(i) + x(n).*exp((-1j).*(w(i).*(n-N0)));
    end
end

end