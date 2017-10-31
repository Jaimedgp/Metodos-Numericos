function J=matrizjacobiana(f,v,h)
% Calcula la matriz jacobiana de f en v, usando la formula central.
% Se supone que f va de R^n a R^m, todos los vectores son columnas.
% h es el parametro para calcular la derivada

n = length(v); % dimension de la salida
m = length(f(v)); % dimension de la llegada
J = zeros(m,n); % Fijamos el tamanho de la matriz.

for k = 1:n
    % k-esima columna de J:
    e = zeros(n,1);
    e(k) = 1; % k-esimo vector de la base canonica
    J(:,k) = (f(v+h*e)-f(v-h*e)) / 2/h;
end
