function xt = SumOfSines(A, F, P, td, fs)
t = 0:1/fs:td;
xt = zeros(size(t));
for i =1:length(A)
    xt=xt+A(i)*sin(2*pi*F(i)*t + P(i)); %generate harmonics 
end
end