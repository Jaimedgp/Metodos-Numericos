% Dado que no sabemos cual es el valor de A
% pero dado A podemos calcula x(A)....
% Para averiguar el valor de A que hace x(A)=0.63
% resolvemos la ecuacion x(A)-0.63=0. Esto es:

f = @(A) situacion_atomo(A)-0.63;

A = biseccion(f, 0.005,0.001,.000001,10000)

%A_Buscado = biseccion(f, 0.00001, 100, 0.000001, 10000)