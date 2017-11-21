function I=gausslegendre(f,a,b,n)
% Estima la integral de f entre a y b con n nodos
% utilizando la regla de Gauss Legendre
[nodos,pesos]=nodosypesosgl(n);
I=0;
g=@(t) f((b-a)/2*t+(a+b)/2); % Cambio de variable
for j=1:n
  I=I+pesos(j)*g(nodos(j));
end
I=I*(b-a)/2; % Por el cambio de variable