function F = fourierCoeff(N,T,t,xt,a,b)
w0 = 2*pi/T;
F=zeros(2*N+1,1);
F_idx = -N:N;
for nn=1:2*N+1
    expr= xt * exp(1i*F_idx(nn)*w0*t);
    F(nn) = int(expr,t,a,b)/T;
end

