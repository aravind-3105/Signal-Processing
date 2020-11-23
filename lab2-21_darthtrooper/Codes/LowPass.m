function B = LowPass(A,F,wc)
B = zeros(1,length(A));
%The below condition is put in order to filter out and produce non-zero value only tovalues between -wc and wc
B(F<wc & F>-wc) = A(F<wc & F>-wc);
end
