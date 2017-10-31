function div = divergancia(f,v,h)
% Calcula la divergancia de f en v, usando la formula central
% Se supone que f va de R^n a R^n, todos los vectores son columnas
% h es el parametro para calcular la derivada

J = matrizjacobiana(f,v,h);
div = trace(J);