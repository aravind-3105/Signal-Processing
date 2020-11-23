T1 = zeros(1,10); 
T2 = zeros(1,10); 
for  p= 1:10
        N = 1000*p;
        t1 = 0; 
        t2 = 0; 
        tic;
       for M = 1:10
                x = rand(N,1);
                tic
                X1 = directdft(x);
                t1 = t1 + toc;
                tic
                X2 = fft(x);
                t2 = t2 + toc;
            end
        t2 = toc;
        T1(p) = t1;
        T2(p) = t2;
end
plot(1:10, T1, 'rx:', 1:10, T2, 'b+:');
xlabel("N");
ylabel("Time");
legend("Direct DFT","FFT");

