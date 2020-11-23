function X = continuousFT(xt,t,a,b,w0)
X = zeros(length(w0),1); %Vector to store the transform 
for r = 1:length(w0)    
    expr = xt*exp(-1i*w0(r)*t);
    X(r) = int(expr,t,a,b);
end
end
