%Impulse
w = -10:0.01:10;
N0 = 1;
x = [1];
X = DTFT(x,N0,w);

figure;
subplot(2,2,1); plot(w,real(X));
title("For impulse");
ylabel("Real part");
subplot(2,2,2); plot(w,imag(X));
ylabel("Imaginary part");
subplot(2,2,3); plot(w,abs(X));
ylabel("Magnitude");
subplot(2,2,4); plot(w,angle(X));
ylabel("Phase");


%Shifted impulse
N0 = 1;
x = [0,0,0,0,0,1];
X = DTFT(x,N0,w);

figure;
subplot(2,2,1); plot(w,real(X));
title("For shifted impulse");
ylabel("Real part");
subplot(2,2,2); plot(w,imag(X));
ylabel("Imaginary part");
subplot(2,2,3); plot(w,abs(X));
ylabel("Magnitude");
subplot(2,2,4); plot(w,angle(X));
ylabel("Phase");


%Rectangular impulse 
N0 = 6;
x = [1,1,1,1,1,1,1,1,1,1,1];
X = DTFT(x,N0,w);

figure;
subplot(2,2,1); plot(w,real(X));
title("For rectangular impulse");
ylabel("Real part");
subplot(2,2,2); plot(w,imag(X));
ylabel("Imaginary part");
subplot(2,2,3); plot(w,abs(X));
ylabel("Magnitude");
subplot(2,2,4); plot(w,angle(X));
ylabel("Phase");



%Shifted Rectangular Impulse
N0 = 1;
x = [1,1,1,1,1,1,1,1,1,1,1];
X = DTFT(x,N0,w);

figure;
subplot(2,2,1); plot(w,real(X));
title("For Shifted Rectangular Impulse");
ylabel("Real part");
subplot(2,2,2); plot(w,imag(X));
ylabel("Imaginary part");
subplot(2,2,3); plot(w,abs(X));
ylabel("Magnitude");
subplot(2,2,4); plot(w,angle(X));
ylabel("Phase");




%Sinusoid sin(wn) w=pi/3
N0 = 501;
wo = pi/3;
x = sin(wo*(-500:500));
X = DTFT(x,N0,w);

figure;
subplot(2,2,1); plot(w,real(X));
title("For Sinusoid");
ylabel("Real part");
subplot(2,2,2); plot(w,imag(X));
ylabel("Imaginary part");
subplot(2,2,3); plot(w,abs(X));
ylabel("Magnitude");
subplot(2,2,4); plot(w,angle(X));
ylabel("Phase");

