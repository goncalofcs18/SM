x = linspace(-1,1,51);
y = x;

[XX,YY] =meshgrid(x,y); 

f = cos(4*pi*(XX+YY))*exp(-abs(XX+YY));

surf(x,y,f)

shading faceted

[x, y] = f3(3,4) %calls f3 function


