function [X,f] = espetro(x,Ta)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n=length(x);
Fa=1/Ta;
X=fftshift(fft(x))/n;
f=(0:n-1)*(Fa/n)-(Fa/2);
stem(f,abs(X));
end