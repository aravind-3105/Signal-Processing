function [N,ROC,C,S] = roc_cs(p)
C = [];
S = [];
Magnitude = abs(p);
Unique_amplitude = unique(Magnitude);
N = length(Unique_amplitude) + 1;  %Number of unique ROC possible

if(Unique_amplitude(1) == 0)
    N = N-1;
end

ROC = [];
if(Unique_amplitude(1) ~= 0)  %If amplitude not equal
    ROC = [ROC; 0,Unique_amplitude(1)];  
end

for roc_iterator = 1:length(Unique_amplitude)-1
    ROC = [ROC; Unique_amplitude(roc_iterator),Unique_amplitude(roc_iterator+1)]; %annular Region
end

ROC = [ROC; Unique_amplitude(length(Unique_amplitude)), inf];  %External region

for roc_iterator = 1:N
    a = ROC(roc_iterator,1);
    b = ROC(roc_iterator,2);
    
    if(b==inf)  %Check if Infinity is part of ROC so that we can assign Causality.
        C = [C;1];
    else
        C = [C;0];
    end
    
    if(a<1 && 1<b)  %Unit Circle check for Stability Check 
        S = [S;1];
    else
        S = [S;0];
    end
    
    
end
end
        