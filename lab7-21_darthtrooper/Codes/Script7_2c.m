p = 0.8;
a = [1 , p];
b = [1];
[H,T] = impz(b,a);
figure;
impz(b,a);