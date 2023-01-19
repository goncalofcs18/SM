w = linspace(-2*pi, 0, 200);

f = sin(4*w).*exp(1i*w);
g = sin(8*w).*exp(1i*w);

plot(w, f, 'g', w, g, 'r')
%plot(w,f,'r') 
%plot(w,g,'g')

legend('f(w)', 'g(w)')
