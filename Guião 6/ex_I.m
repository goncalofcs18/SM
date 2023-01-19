%EX1
load('Guitar03.mat')
sound(x, fa)

%EX2

Espetro(x,1/fa);

%EX3

[X, f] = Espetro(x,1/fa);

N = length(f);
H = zeros(1,N);

H(f>100 & f<400) = 1;
H(f>-400 & f<-100) = 1;

figure(2);
plot(f, H)

xx = H.*X';
figure(3)
plot(f,abs(xx))
xlim([-4000 4000]);

%Reconstruir
[y, Ta] = ReconstroiSinal(xx, f);

t = 0:Ta:N*Ta-1;
figure(4)
plot(t,y);

sound(real(y),fa);