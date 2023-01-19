%% Exercicio 2

Ta=0.001;
f0=1;
Np=2;

bk=[0 4/pi 0 4/(3*pi) 0 4/(5*pi) 0 4/(7*pi) 0 4/(9*pi) 0 4/(11*pi) 0 4/(13*pi) 0 4/(15*pi) 0 4/(17*pi) 0 4/(19*pi)];
ak=zeros(size(bk));

[xt,t] = serieFourier(Ta, f0, Np, ak, bk);

t1=0:0.01:2;
y = square(2*pi*1*t1);
plot(t1,y,'r')
hold on
plot(t,xt,'g')
hold off


[ak1,bk1]=serieCoefFourier(Ta,1/f0,xt,5);




