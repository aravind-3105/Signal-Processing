hn=[];
for i=0:50
    if i==25
        hn=[hn,-1/6];
    else
        hn=[hn,((-1)^i)*sin(pi*(i-25)/6)/(pi*(i-25))];
    end
end
freqz(hn);