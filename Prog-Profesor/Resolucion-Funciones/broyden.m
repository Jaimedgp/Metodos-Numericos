function [x1,fx1]=broyden(f,c,epsilon,M,h)
% Calcula una solucion aproximada de f(x)=0 con el metodo de Broyden
% se comienza la iteracion en x_0=c y se pone un limite de iteraciones
% Tambien se pide al usuario la precision epsilon. La primera matriz
% Jacobiana se obtiene aproximando las derivadas parciales con la
% formula de la derivada central, con precision h.
x0=c;
Ainv=inv(matriz_jacobiana(f,c,h));
w=f(x0);
s=-Ainv*w;
x1=x0+s;
mierror=1;
contador=1;
while (mierror>epsilon) && (contador<=M)
  z=w;
  w=f(x1);
  y=w-z;
  r=-Ainv*y;
  p=-s'*r;
  uT=s'*Ainv;
  Ainv=Ainv+(s+r)*uT/p;
  s=-Ainv*w;
  x1=x1+s;
  mierror=norm(s);
  contador=contador+1;
end
fx1=f(x1);
contador==(M+1);
if contador==(M+1)
  error('Se ha alcanzado el numero maximo de iteraciones');
end