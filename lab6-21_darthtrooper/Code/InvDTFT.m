function x = InvDTFT(X,w,n)
    a = -pi;
    b = pi;
    expr = X*exp(w*n*1i);
    x = 1/(2*pi) * int(expr,w,a,b);
end