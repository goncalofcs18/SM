function [S] = taylor_seno(x,N)

S = 0;
for n = 1:N
    S = S + ((x.^n ) / factorial(n) ).* sin((n*pi)/2)
end

end