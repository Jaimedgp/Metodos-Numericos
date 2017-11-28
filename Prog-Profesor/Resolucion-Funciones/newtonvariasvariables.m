function x1=newtonvariasvariables(f,Jf,c,epsilon,M)
% Calcula una solucion aproximada de f(x)=0 con el metodo de Newton
% se comienza la iteracion en x_0=c y se pone un limite de iteraciones
% Tambien se pide al usuario la precision epsilon.
% se pide Jf que es la jacobiana de f.
x1=c;
mierror=1;
contador=1;
while (mierror>epsilon) && (contador<=M)
  x0=x1;
  x1=x1-Jf(x1)\f(x1);
  mierror=norm(x0-x1);
  contador=contador+1;
end
contador==(M+1)
if contador==(M+1)
  error('Se ha alcanzado el numero maximo de iteraciones');
end