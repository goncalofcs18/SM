function [x,Ta] = reconstroi(X,f)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    N = length(X);
    fa = max(abs(f))*2;
    t = (0:N-1)*(1/fa);
    x = ifft(ifftshift(X))*N;
end