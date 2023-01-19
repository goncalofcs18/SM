x = linspace(0,2*pi);
y = sin(x);
sen_series2 = taylor_seno(x,2);
sen_series10 = taylor_seno(x, 10);
plot(x,y,'r',x, sen_series2, 'k', x, sen_series10, 'b')
legend('sin', 'N=2', 'N=10')

