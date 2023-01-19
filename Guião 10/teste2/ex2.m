%% ex 2
load 'Guitar02 (2).mat'
fa = 1/Ta;
%sound(x, fa);

figure(2)
[X,F] = espetro(x,Ta);
xlim([-5e3 5e3]);
title("Espetro das notas musicais")
xlabel("Frequencia")
ylabel("Magnitude")


%% ex4

[X,f] = espetro(x,Ta);

figure(3)
H = zeros(length(f),1);
H((f>867.9) & (f<868.5)) = 1;
H((f>-868.5) & (f<-867.9)) = 1;
H((f>1299.4) & (f<1300.5)) = 2;
H((f>-1300.5) & (f<-1299.4)) = 2;
xf = H.*X;
[w,t] = Reconstroi(xf,f);
legend("Reconstrução Sinal");
w = real(w);
sound(w,fa)
plot(real(t(1:500)), w(1:500))

