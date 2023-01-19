x = linspace(-2*pi, 0, 200);
y = sin(x).*exp(x); 

plot(x,y,'.r') %ponteado vermelho
axis([-8 0 -0.5 0.8]) %janela de visualização xmin xmax ymin ymax