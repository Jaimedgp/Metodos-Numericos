function lap = laplaciano(f,v,h)
% Calcula el laplaciano de f en v, usando la formula simetrica central
% Se supone que f va de R^n a R, todos los vectores son columnas
% h es el parametro para calcular la derivada

lap = 0;
n = length(v);
for k = 1:n
    e = zeros(n,1);
    e(k) = 1; % k-esimo vector de la base canonica
    lap = lap+(f(v+h*e)+f(v-h*e)-2*f(v)) / h^2;
end