function x1=secante(f,c0,c1,epsilon,M)
% Calcula una solucion aproximada de f(x)=0 con el metodo de la secande
% se comienza la iteracion en x_0=c0, x_1=c1 y se pone un limite de iteracione
% Tambien se pide al usuario la precision epsilon.
x0=c0;
fx0=f(x0);
x1=c1;
fx1=f(x1);
mierror=1;
contador=1;
while (mierror>epsilon) && (contador<=M)
  xaux=x1;
  x1=x1-fx1*(x1-x0)/(fx1-fx0)
  mierror=abs(x0-x1);
  contador=contador+1;
  x0=xaux;
  fx0=fx1;
  fx1=f(x1);
end
contador==(M+1)
if contador==(M+1)
  error('Se ha alcanzado el numero maximo de iteraciones');
end