n = -50:50;
wc = pi/16;
figure;
syms w;
X = piecewise(w<-wc,0,-wc<=w<=wc,1,wc<w,0);
x = InvDTFT(X,w,n);
plot(n,x);
title('wc = pi/16');

figure;
%pi/8
wc = pi/8;
syms w;
X = piecewise(w<-wc,0,-wc<=w<=wc,1,wc<w,0);
x = InvDTFT(X,w,n);
plot(n,x);
title('wc = pi/8');

figure;
%pi/4
wc = pi/4;
syms w;
X = piecewise(w<-wc,0,-wc<=w<=wc,1,wc<w,0);
x = InvDTFT(X,w,n);
plot(n,x);
title('wc = pi/4');

figure;
%pi/2
wc = pi/2;
syms w;
X = piecewise(w<-wc,0,-wc<=w<=wc,1,wc<w,0);
x = InvDTFT(X,w,n);
plot(n,x);
title('wc = pi/2');
hold off;