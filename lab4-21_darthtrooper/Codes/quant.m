function y = quant(x,L,a,b)

s = (b-a)/L;
t = a+s/2 : s : b-s/2;

mid = floor((x-a)/s) + 1;
mid(mid > length(t)) = length(t);

y = t(mid);
end