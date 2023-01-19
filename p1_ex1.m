a = 1:2:10 % impares de 1  a 10
b = linspace(-5,5,11) % 11 inteiros entre -5 e 5
c = -5:5 % de outra forma
d = [1 5 1-j ; 4 j -1] % matriz com 2 linas e 3 colunas
d(3,:) = [1 2 3] % aumentar uma linha
d(:,4) =[5 6 7] % aumentar uma coluna
d(:,1:2:end) = [] % apagar colunas impar