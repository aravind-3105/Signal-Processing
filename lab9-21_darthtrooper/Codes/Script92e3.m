n = 0:200;
xn = cos((pi*n)/16)+0.25*randn(1,201);
subplot(2,1,1);
stem(0:length(xn)-1,xn);
title("xn");
hn=[];
for i=0:50
    if i==25
        hn=[hn,1/6];
    else
        hn=[hn,sin(pi*(i-25)/6)/(pi*(i-25))];
    end
end
yn=conv(xn,hn);
subplot(2,1,2);
stem(0:length(yn)-1,yn);
title("Conv(xn,hn)");
ylim([-1.5 1.5]);