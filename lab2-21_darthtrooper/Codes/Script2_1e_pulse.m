%Parameters
T = 1;
a = -1;
b = 1;
syms t;
syms xt(t);
syms t;
xt = 1 - abs(t);
w = -5:0.1:5;
%Function call
X = continuousFT(xt,t,a,b,w);
figure;
hold on;

%Plot1: The real value of the transform is plotted.
subplot(2,2,1)
plot(w,real(X));
title('Subplot 1: Real Value');
xlabel('w');
ylabel('Real(X(jw))');

%Plot2: The imaginary value of the transform is plotted.
subplot(2,2,2)
plot(w,imag(X));
title('Subplot 2: Img Value');
xlabel('w');
ylabel('Img(X(jw))');

%Plot3: The magnitude of the transform is plotted.
subplot(2,2,3)
plot(w,abs(X));
title('Subplot 3: Magnitude Value');
xlabel('w');
ylabel('|X(jw)|');

%Plot4: The phase value of the transform is plotted.
subplot(2,2,4)
plot(w,angle(X));
title('Subplot 4: Phase Value');
xlabel('w');
ylabel('Phase(X(jw))');
hold off;

