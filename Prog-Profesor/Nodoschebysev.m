function x=Nodoschebysev(n,a,b)
% Genera n nodos de Chebyshev en el intervalo [a,b],
% ordenados de menor a mayor.
m=n-1;
k=m:-1:0;
x=cos((2*k+1)/(2*m+2)*pi);
x=x*(b-a)/2+(b+a)/2;