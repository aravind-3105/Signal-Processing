N = 10;
x1 = randn(1,N);
x2 = randn(1,N);
c1_in_built = cconv(x1,x2,N);
c2_in_built = conv(x1,x2);
[c1,c2] = dftconv(x1,x2);


figure; 
subplot(2,2,1)
stem(c1_in_built);
title("Circular Convolution In-Built");
xlabel("n");
ylabel("y[n]");

subplot(2,2,2)
stem(c2_in_built);
title("Linear Convolution In-Built");
xlabel("n");
ylabel("y[n]");

subplot(2,2,3)
stem(c1);
title("Circular Convolution User-Defined");
xlabel("n");
ylabel("y[n]");

subplot(2,2,4)
stem(c2);
title("Linear Convolution User-Defined");
xlabel("n");
ylabel("y[n]");

