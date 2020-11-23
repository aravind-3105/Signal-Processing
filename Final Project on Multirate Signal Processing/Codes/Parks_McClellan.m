%% Sample execution of Parks-McClellan optimal FIR filter design

%NOTE: Example question in Proakis and Manolas Chapter 11
%Design a lowpass filter with a 1500Hz passband cut-off, 2000Hz stopband cut-off frequency. 
%Specify a sampling frequency of 8000Hz. Require a maximum stopband amplitude of 0.01. and maximum passband error of 0.001. 
%Obtain the required filter order,  normalised frequency band edges, frequency band amplitudes, and weights in an optimised method using Parks McClellan Algorithm
%%

%%Code Implementation
f = [1500 2000];   %[Passband Stopband]
m = [1 0]; 
ripple = [0.001 0.01];
fs = 8000;
[n, f0, m0, w] = firpmord(f ,m ,ripple ,fs);
%Display the values obtain
disp(n);
disp(f0);
disp(m0);
disp(w);

b1 = firpm(n,f0,m0,w);
b2 = firpm(15,f0,m0,w);
b3 = firpm(65,f0,m0,w);
h = fvtool(b1,1,b2,1,b3,1);

%%
%%There are two main parts of implementation of the Park-McClellan Algorithm. 
%1)	Determine the order of the optimal FIR Filter using 
%[n, fo, mo, w] = firpmord (f, m,dev) 
%f is the vector of band frequencies. For a low pass filter, f=[wp ws] where wp is the upper edge of the passband and ws is the lower edge of the stopband. 
%The vector m contains the desired magnitude response values at the passbands and the stopbands of the filter. 
%Here, m = [1 0] for passband, stopband respectively for convenience. 
%dev gives the maximum possible deviations from the response which correspond to the passband and stopband ripple. 

%%
%%The ouputs of the function are as follows: 
%a)	n = Approximate Order 
%b)	fo = normalised frequency band edges
%c)	mo = frequency band magnitudes
%d)	w = weights to be used for filter design
%2)	Actual design of the filter using: 
%b=firpm (n, fo, mo)
%Here b is the returned value of the firpm function which is a  n+1 length linear phase (real, symmetric) coefficients of the FIR filter’s Z-Transform optimised by Parks-McClellan FIR in a minmax sense. 
%This method can also be implemented to produce optimised high-pass and band-pass filters. 


