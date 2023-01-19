load Guitar01.mat
%% e1

sound(x, fa);
disp("a duração em segundos é "+ (length(x)/fa) + " segundos");
t=0:1/fa:length(x)/fa-1/fa;
figure(1)
plot(t,x)
xlabel("TEMPO")
ylabel("Amplitude")



%% e2

figure(2)
[X,F] = espetro(x,1/fa);
xlim([-5e3 5e3]);
ylim([0 4e-3]);
xlabel("Frequencia")
ylabel("Magnitude")


%% e3


fa_new=2*fa;
disp("a duração em segundos é "+ (length(x)/fa_new) + " segundos");
t=0:1/fa_new:length(x)/fa_new-1/fa_new;


figure(3)
subplot(1,2,1)
plot(t,x)
xlabel("TEMPO")
ylabel("Amplitude")
subplot(1,2,2)
[Y,f] = espetro(x,1/fa_new);
xlabel("Frequencia")
ylabel("Magnitude")


%% e4

[X, f] = espetro(x,1/fa);
N = length(X);
filter_x = Filter(f,N,[488.91 488.93]);
p = filter_x.*X';
[w,t] = reconstroi(X,f);
w = real(w);
sound(w,fa);
plot(real(t(1:250)), w(1:250))



%% e5
x_new=zeros(1000,1);
for i=1:1000
    x_new(i)=x(i);
end

if abs(min(x_new))<abs(max(x_new))
    Amp=abs(max(x_new));
else
    Amp=abs(min(x_new));
end
FTS=2*Amp;
n=3;
delta = FTS/2^n;

[indx, quantz]=quantiz(x_new,-Amp:delta:Amp,-Amp-delta/2:delta:Amp+delta/2);

figure(5)
subplot(1,3,1)
plot(0:999,x_new)
xlabel("TEMPO")
ylabel("Amplitude")
subplot(1,3,2)
espetro(x_new,1/fa);
xlabel("Frequencia")
ylabel("Magnitude")
subplot(1,3,3)
plot(0:999,quantz)
xlabel("TEMPO")
ylabel("Amplitude")