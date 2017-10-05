% Se crea la funcion para crear los nodos de Chebyshev
function xk = Chebyshev(a, b, n);
    k = 0:n; %se crea un vector de 0 a n
    xk = cos(pi*(2*k+1) / (2*n+2) )  * ((b-a)/2) + ((b+a)/2);
end