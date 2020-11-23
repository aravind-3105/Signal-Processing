function xr = sinc_interp(n,xn,Ts,t_fine)
% n - integer locations of the samples x[n]
% xn - the samples x[n] = x(n*Ts)
% Ts - the sampling interval
% t_fine - the time-grid for reconstruction of xr
% xr - reconstructed signal over time-grid t_fine
xr = zeros(size(t_fine));
for ii = n
    xr = xr + (xn(ii+(1-n(1)) * sinc((t_fine/Ts) - ii));%finding sampled values   The extra term 1-n(1) is needed for the subraction of the extra sample 
end
end
