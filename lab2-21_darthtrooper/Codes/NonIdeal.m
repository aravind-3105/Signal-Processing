function B = NonIdeal(A,F,G,a)
H = G./(1i*F + a); %Element-wise division
B = H.*A;          %Element wise multiplcation to produce the modified coefficients
end
